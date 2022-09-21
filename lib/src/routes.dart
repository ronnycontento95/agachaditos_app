import 'package:agachaditos_app/src/features/presentacion/forgot_password_page/View/forgot_password_page.dart';
import 'package:agachaditos_app/src/features/presentacion/login_page/View/login_page.dart';
import 'package:agachaditos_app/src/features/presentacion/sign_up_page/View/sign_up_page.dart';
import 'package:agachaditos_app/src/features/presentacion/tabs/tabs_page.dart';
import 'package:flutter/material.dart';
import 'package:agachaditos_app/src/features/presentacion/welcome_page/View/welcome_page.dart';


final routes = <String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'fortgot-password' : (BuildContext context) => ForgotPassword(),
  'sign-up' : (BuildContext context) => SignUp(),
  'tabs' : (BuildContext context) => TabsPage()


};