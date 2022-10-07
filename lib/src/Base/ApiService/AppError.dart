import 'dart:convert';

import 'package:agachaditos_app/src/Base/Constants/ErrorMessages.dart';
import 'package:agachaditos_app/src/services/FirebaseService/AuthFirebaseService/Decodables/AuthErrorDecodable.dart';
//Class error asincrona
class Failure {
  String? message;
  Map<String, dynamic> error = {};

  @override
  String toString() => message ?? "";
  Failure.fromMessage({String? message}) {
    this.message = message;
  }

  Failure.fromBody({required String body}) {
    var jsonData = jsonDecode(body);
    this.error = jsonData;
  }

  static Failure getFirebaeAuthErrorMessage({required Map<String, dynamic> error}) {
    AuthErrorDecodable _erroDecodable = AuthErrorDecodable.fromJson(error);
    var message= "";
    _erroDecodable.error?.errors?.forEach((error) {
      message = error.message ?? "";
    });
    if(message == "EMAIL_NOT_FOUND"){
      return Failure.fromMessage(message: FBFailuMessages.emailNotFundMessage);
    } else if(message == "INVALID_PASSWORD"){
      return Failure.fromMessage(message: FBFailuMessages.passwordNotFundMessage);

    } else if(message == "EMAIL_EXISTS"){
      return Failure.fromMessage(message: FBFailuMessages.emailExistMessage);
    
    } else if(message == "TOO_MANY_ATTEMPTS_TRY_LATER"){
      return Failure.fromMessage(message: FBFailuMessages.tooManyAttemptsMessage);
    
    }else if(message == "INVALID_ID_TOKEN"){
      return Failure.fromMessage(message: FBFailuMessages.invalidIdTokenMessage);
    
    }else if(message == "USER_NOT_FOUND"){
      return Failure.fromMessage(message: FBFailuMessages.userNotFoundMessage);
    
    }else {
      return Failure.fromMessage(message: message);
    }

  }
}
