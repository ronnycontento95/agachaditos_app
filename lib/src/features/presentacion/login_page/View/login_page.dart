import 'package:agachaditos_app/src/features/presentacion/commons_widgets/BackButons/back_button.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Buttons/create_button.dart';
import 'package:flutter/material.dart';
//UI
import 'package:flutter/services.dart';
//widgets

//color
import 'package:agachaditos_app/src/colors/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                  width: double.infinity,
                  height: 300.0,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://res.cloudinary.com/developments/image/upload/v1655242112/App_Agachaditos/LaComida_guacamole_aousjn.jpg')),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: backButton(context, Colors.white),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              // height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Login to you account',
                        style: TextStyle(
                          color: gris,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      _emailInput(),
                      _passwordInput(),
                        createButton( context: context, color: redColorPrimary, labelButton: 'Log  in', func: (){
                          Navigator.pushNamed(context, 'tabs');
                        }),
                      Container(
                        margin: const  EdgeInsets.only(top: 30.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'fortgot-password');
                          },
                          child: const Text(
                            'Forgot you password?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dont have an account',
                              style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'sign-up');
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  'Sighn up?',
                                  style: TextStyle(
                                      color:redColorPrimary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const    EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color:const Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration:  InputDecoration(
          hintText: 'email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: const EdgeInsets.only(top: 15.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration:  BoxDecoration(
        color: const Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'password',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

