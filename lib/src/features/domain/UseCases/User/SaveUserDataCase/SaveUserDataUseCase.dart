import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';
import 'package:agachaditos_app/src/Base/Constants/ErrorMessages.dart';
import 'package:agachaditos_app/src/features/data/Repositories/User/SaveUserDataRepository.dart';
import 'package:agachaditos_app/src/features/data/Repositories/User/UserBodyParameters.dart';
import 'package:agachaditos_app/src/features/domain/Entities/User/UserEntity.dart';
import 'package:agachaditos_app/src/features/domain/Interfaces/Interfaces.dart';
import 'package:agachaditos_app/src/utils/Helpers/ResultType/ResultType.dart';

import 'SaveUserDataUseCaseParameters.dart';

abstract class SaveUserDataUseCase {
  Future<Result<UserEntity, Failure>> execute(
      {required SaveUserDataUseCaseParameters parameters});
}

class DefaultSaveUserDataUseCase extends SaveUserDataUseCase {
  //Dependencias
  final SaveUserDataRepository _saveUserDataRepository;
  
  DefaultSaveUserDataUseCase({SaveUserDataRepository? saveUserDataRepository})
      : _saveUserDataRepository =
            saveUserDataRepository ?? DefaulSaveUserDataRepository();
  @override
  Future<Result<UserEntity, Failure>> execute(
      {required SaveUserDataUseCaseParameters parameters}) {
    
    UserBodyParameters _parameters = UserBodyParameters(
      localId: parameters.localId,
      role: parameters.role?.toString(),
      username: parameters.username,
      email: parameters.email,
      phone: parameters.phone,
      dateBith: parameters.dateBith,
      starDate: parameters.starDate,
      photo: parameters.photo,
      billingAddress: parameters.billingAddress,
      shippingAddress: parameters.shippingAddress,
      idToken: parameters.idToken,
    );

    return _saveUserDataRepository
        .saveUserDAta(parameters: _parameters)
        .then((result) {
      switch (result.status) {
        case ResultStatus.succes:
        if (result.value== null){
          return Result.failure(Failure.fromMessage(
              message: AppFailureMessages.unExpectedErrorMessage));

        }
        var _entity = UserEntity.fromJson(result.value!.toJson());
        return Result.success(_entity);
        case ResultStatus.error:
          return Result.failure(result.error);
          
      }
    });
  }
}
