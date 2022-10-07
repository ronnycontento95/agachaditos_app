import 'package:agachaditos_app/src/Base/Constants/ErrorMessages.dart';
import 'package:agachaditos_app/src/features/data/Repositories/User/UserBodyParameters.dart';
import 'package:agachaditos_app/src/features/data/Decodables/User/UserDecodabe.dart';
import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';
import 'package:agachaditos_app/src/features/domain/Interfaces/Interfaces.dart';
import 'package:agachaditos_app/src/services/FirebaseService/RealTimeDatabase/Interfaces/interfaces.dart';
import 'package:agachaditos_app/src/services/FirebaseService/RealTimeDatabase/Services/RealtimeDataService.dart';
import 'package:agachaditos_app/src/utils/Helpers/ResultType/ResultType.dart';

abstract class _Paths {
  static String userCollection = "user/";
}

class DefaulSaveUserDataRepository extends SaveUserDataRepository {
  //Dependencias
  REalTimeDatabaseService _rEalTimeDatabaseService;
  DefaulSaveUserDataRepository(
      {REalTimeDatabaseService? rEalTimeDatabaseService})
      : _rEalTimeDatabaseService =
            rEalTimeDatabaseService ?? DefaulREalTimeDatabaseService();

  @override
  Future<Result<UserDecodable, Failure>> saveUserDAta(
      {required UserBodyParameters parameters}) async {
    // TODO: implement saveUserDAta
    if (parameters.localId == null) {
      return Result.failure(Failure.fromMessage(
          message: AppFailureMessages.unExpectedErrorMessage));
    }
    //Crear el path
    var path = _Paths.userCollection + parameters.localId!;
    try {
      final result = await _rEalTimeDatabaseService.putData(
          bodyParameters: parameters.toJson(), path: path);
      UserDecodable decodable = UserDecodable.fromJson(result);
      return Result.success(decodable);
    } on Failure catch (f) {
      return Result.failure(f);
    }
  }
}
