import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';
import 'package:agachaditos_app/src/Base/Constants/ErrorMessages.dart';
import 'package:agachaditos_app/src/features/data/Repositories/Auth/SignUpRepository/SignUpRepository.dart';
import 'package:agachaditos_app/src/features/data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';
import 'package:agachaditos_app/src/features/domain/Entities/Auth/SignUpEntity/SignUpEntity.dart';
import 'package:agachaditos_app/src/features/domain/Interfaces/Interfaces.dart';
import 'package:agachaditos_app/src/features/domain/UseCases/Auth/SignUpUseCase/SignUpUseCaseParameters.dart';
import 'package:agachaditos_app/src/utils/Helpers/ResultType/ResultType.dart';

abstract class SignUpUseCase {
  Future<Result<SingUpEntity, Failure>> execute(
      {required SignUpUseCaseParameters params});
}
class DefaulSignUpUseCase extends SignUpUseCase {
   SignUpRepository _signUpRepository;
   DefaulSignUpUseCase({ SignUpRepository? signUpRepository}) : _signUpRepository = signUpRepository ?? DefaulSignUpRepository();

  @override
  Future<Result<SingUpEntity, Failure>> execute({required SignUpUseCaseParameters params}) {
    return _signUpRepository.signUp(params: SignUpRepositoryParameters(email: params.email, password: params.password)).then((result){
      switch(result.status){
        
        case ResultStatus.succes:
          // TODO: Handle this case.
          if(result.value == null){
            return Result.failure(Failure.fromMessage (message: AppFailureMessages.unExpectedErrorMessage));
          }
        SingUpEntity entity = SingUpEntity.fromJson(result.value!.toJson());
        //Guardamos en nuevo usuario en la base de datos
        return Result.success(entity);
        case ResultStatus.error:
          // TODO: Handle this case.
          return Result.failure(result.error);
      }
    });
  }

}