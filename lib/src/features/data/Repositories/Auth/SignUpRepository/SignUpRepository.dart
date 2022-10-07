import 'package:agachaditos_app/src/features/data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';
import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';
import 'package:agachaditos_app/src/features/domain/Interfaces/Interfaces.dart';
import 'package:agachaditos_app/src/services/FirebaseService/AuthFirebaseService/AuthFirebaseInterface.dart';
import 'package:agachaditos_app/src/services/FirebaseService/AuthFirebaseService/SignUpServiceInterface.dart';
import 'package:agachaditos_app/src/utils/Helpers/ResultType/ResultType.dart';
import 'package:agachaditos_app/src/services/FirebaseService/AuthFirebaseService/Decodables/SigUpDecodabe.dart';

class DefaulSignUpRepository extends SignUpRepository {
  //Dependencias
  SignUpService _signUpService;
  DefaulSignUpRepository({SignUpService? signUpService})
      : _signUpService = signUpService ?? DefaulSignUpService();

  @override
  Future<Result<SingUpDecodable, Failure>> signUp(
      {required SignUpRepositoryParameters params}) async {
    try {
      final result =
          await _signUpService.signUp(bodyparameters: params.toMap());
      SingUpDecodable decodable = SingUpDecodable.fromJson(result);
      return Result.success(decodable);
    } on Failure catch (f) {
      return Result.failure(Failure.getFirebaeAuthErrorMessage(error: f.error));
    }
  }
}
