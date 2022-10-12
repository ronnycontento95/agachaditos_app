import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';
import 'package:agachaditos_app/src/Base/Constants/ErrorMessages.dart';
import 'package:agachaditos_app/src/features/data/Repositories/Auth/SignUpRepository/SignUpRepository.dart';
import 'package:agachaditos_app/src/features/data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';
import 'package:agachaditos_app/src/features/domain/Entities/Auth/SignUpEntity/SignUpEntity.dart';
import 'package:agachaditos_app/src/features/domain/Entities/User/UserEntity.dart';
import 'package:agachaditos_app/src/features/domain/Interfaces/Interfaces.dart';
import 'package:agachaditos_app/src/features/domain/UseCases/Auth/SignUpUseCase/SignUpUseCaseParameters.dart';
import 'package:agachaditos_app/src/features/domain/UseCases/User/SaveUserDataCase/SaveUserDataUseCase.dart';
import 'package:agachaditos_app/src/features/domain/UseCases/User/SaveUserDataCase/SaveUserDataUseCaseParameters.dart';
import 'package:agachaditos_app/src/utils/Helpers/Date/DateHelpers.dart';
import 'package:agachaditos_app/src/utils/Helpers/ResultType/ResultType.dart';
import 'package:agachaditos_app/src/utils/Helpers/UserPhotos/UserPhotoHelper.dart';

abstract class SignUpUseCase {
  Future<Result<SingUpEntity, Failure>> execute(
      {required SignUpUseCaseParameters params});
}

class DefaulSignUpUseCase extends SignUpUseCase {
  SignUpRepository _signUpRepository;
  SaveUserDataUseCase _saveUserDataUseCase;
  DefaulSignUpUseCase(
      {SignUpRepository? signUpRepository,
      SaveUserDataUseCase? saveUserDataUseCase})
      : _signUpRepository = signUpRepository ?? DefaulSignUpRepository(),
        _saveUserDataUseCase =
            saveUserDataUseCase ?? DefaultSaveUserDataUseCase();

  @override
  Future<Result<SingUpEntity, Failure>> execute(
      {required SignUpUseCaseParameters params}) {
    return _signUpRepository
        .signUp(
            params: SignUpRepositoryParameters(
                email: params.email, password: params.password))
        .then((result) {
      switch (result.status) {
        case ResultStatus.succes:
          // TODO: Handle this case.
          if (result.value == null) {
            return Result.failure(Failure.fromMessage(
                message: AppFailureMessages.unExpectedErrorMessage));
          }
          SingUpEntity entity = SingUpEntity.fromJson(result.value!.toJson());
          //Guardamos en nuevo usuario en la base de datos
          return saveUserDataInDataBase(params: params, entity: entity);
        case ResultStatus.error:
          // TODO: Handle this case.
          return Result.failure(result.error);
      }
    });
  }
}

extension on DefaulSignUpUseCase {
  Future<Result<SingUpEntity, Failure>> saveUserDataInDataBase(
      {required SignUpUseCaseParameters params, required SingUpEntity entity}) {
    SaveUserDataUseCaseParameters _params = SaveUserDataUseCaseParameters(
        localId: entity.localId,
        role: UserRole.user,
        username: params.username,
        phone: params.phone,
        dateBith: params.date,
        starDate: DAteHelpers.getStartDate(),
        photo: UserPhotoHelper.defaulUserPhoto,
        shippingAddress: '',
        billingAddress: '',
        idToken: entity.idToken);

    return _saveUserDataUseCase.execute(parameters: _params).then((result) {
      switch (result.status) {
        case ResultStatus.succes:
          // TODO: Handle this case.

          return Result.success(entity);
        case ResultStatus.error:
          // TODO: Handle this case.
          return Result.failure(result.error);
      }
    });
  }
}
