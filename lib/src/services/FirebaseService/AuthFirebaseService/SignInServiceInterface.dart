import 'package:agachaditos_app/src/services/FirebaseService/AuthFirebaseService/AuthFirebaseInterface.dart';

class DefaulSignInService extends SignInService {
  @override
  Future<Map<String, dynamic>> signIn(
      {required Map<String, dynamic> bodyparameters}) {
    return apiService.getDataPostRequest(
        bodyparameters: bodyparameters, url: endpoint);
  }
}
