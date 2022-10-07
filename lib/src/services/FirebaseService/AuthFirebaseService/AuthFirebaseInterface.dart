import 'package:agachaditos_app/src/Base/ApiService/ApiService.dart';

abstract class BaseFirebaseService {
  ApiService apiService = DefaultApiService();
  static String baseUrl = "https://identitytoolkit.googleapis.com/v1/";
  static String signupEndpoint = "accounts:signUp?key=";
  static String signInEndpoint = "accounts:signInWithPassword?key=";
  static String adminToken = "AIzaSyA_ToG09QliNmv0OXLTG_98KL3axauJZfY";
}

abstract class SignUpService extends BaseFirebaseService {
  String endpoint = BaseFirebaseService.baseUrl +
      BaseFirebaseService.signupEndpoint +
      BaseFirebaseService.adminToken;
  Future<Map<String, dynamic>> signUp(
      {required Map<String, dynamic> bodyparameters});
}

abstract class SignInService extends BaseFirebaseService {
  String endpoint = BaseFirebaseService.baseUrl +
      BaseFirebaseService.signInEndpoint +
      BaseFirebaseService.adminToken;
  Future<Map<String, dynamic>> signIn(
      {required Map<String, dynamic> bodyparameters});
}
