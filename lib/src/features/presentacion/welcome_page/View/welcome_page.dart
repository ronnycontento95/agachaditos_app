import 'dart:ui';

import 'package:agachaditos_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(
            statusBarColor: Colors.white
        )
    );
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
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
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: const Text(
              'DELIVERED FAST FOOD TO YOUR DOOR',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
            child: const Text(
              'Set exact location to find the right restaurants near you.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0),
            ),
          ),
          Container(
            width: 350.0,
            height: 45.0,
            child: RaisedButton(
              onPressed: () {

                Navigator.pushNamed( context, 'login' );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Theme.of(context).accentColor,
              child: const Text('Log in'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: 350.0,
            height: 45.0,
            child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Theme.of(context).buttonColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Connect with facebook',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ],
                )),
          ),
        ]),
      ],
    ));
  }
}
