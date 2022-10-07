import 'package:agachaditos_app/src/services/FirebaseService/AuthFirebaseService/AuthFirebaseInterface.dart';

class DefaulSignUpService extends SignUpService {
  @override
  Future<Map<String, dynamic>> signUp(
      {required Map<String, dynamic> bodyparameters}) {
    return apiService.getDataPostRequest(
        bodyparameters: bodyparameters, url: endpoint);
  }
}
