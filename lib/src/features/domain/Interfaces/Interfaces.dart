//Auth Repositories
import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';
import 'package:agachaditos_app/src/features/data/Decodables/User/UserDecodabe.dart';
import 'package:agachaditos_app/src/features/data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';
import 'package:agachaditos_app/src/features/data/Repositories/User/UserBodyParameters.dart';
import 'package:agachaditos_app/src/services/FirebaseService/AuthFirebaseService/Decodables/SigUpDecodabe.dart';
import 'package:agachaditos_app/src/utils/Helpers/ResultType/ResultType.dart';

abstract class SignUpRepository {
  Future<Result<SingUpDecodable, Failure>> signUp(
      {required SignUpRepositoryParameters params});
}

//User  Database Repositories
abstract class SaveUserDataRepository {
  Future<Result<UserDecodable, Failure>> saveUserDAta(
      {required UserBodyParameters parameters});
}
