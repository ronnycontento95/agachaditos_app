abstract class AppFailureMessages {
  static String unExpectedErrorMessage = "Ha occurido un error inesperado";
}

abstract class FBFailuMessages {
  static String emailNotFundMessage =
      "There is no user record corresponding to this identifier. the user may have been deleted";
  static String passwordNotFundMessage = "The password is invalid or the user does not have a password";
  static String emailExistMessage ="La direccion de correo electronico ya esta siendo utilizado por otra persona";
  static String tooManyAttemptsMessage ="Hemos bloqueado todas las solicitudes de esta dispositivo debido a una actividad inusual. Vuelva a intentarlo mas tarde";
  static String invalidIdTokenMessage ="La credencial del usuario ya no es valida. El usuario debe iniciar sesion nuevamente";
  static String userNotFoundMessage = "No hay ningun registro de usuario que corresponda a este indentificador. Es posible que se haya elimindado el usuario";
}


