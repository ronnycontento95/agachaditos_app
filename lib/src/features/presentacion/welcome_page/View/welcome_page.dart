import 'dart:ui';
import 'package:flutter/material.dart';
//Color
import 'package:agachaditos_app/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Buttons/rounder_button.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://res.cloudinary.com/developments/image/upload/v1655143979/App_Agachaditos/220411_r40201_nhyomv.jpg'),
                  fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.4, sigmaY: 0.4),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: const Text(
              'DELIVERED FAST FOOD TO YOUR DOOR',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
            child: const Text(
              'Set exact location to find the right restaurants near you.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0),
            ),
          ),
          rounderButton(
              color: redColorPrimary,
              labelButton: 'Log in',
              func: () {
                Navigator.pushNamed(context, 'login');
              }),
          rounderButton(
              isWithIcon: true,
              icon: AssetImage("assets/icons/facebook.png"),
              color: colorfacebook,
              labelButton: 'Connect with facebook',
              func: () {
                Navigator.pushNamed(context, 'login');
              }
              )
        ]),
      ],
    ));
  }
}
