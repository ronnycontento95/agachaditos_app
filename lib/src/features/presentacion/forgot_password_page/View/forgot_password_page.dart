import 'package:flutter/material.dart';
//Routes
import 'package:agachaditos_app/src/routes.dart';
//Colors
import 'package:agachaditos_app/src/colors/colors.dart';
//Commons Widgets
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Alets/alert_dialog.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/BackButons/back_button.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Buttons/create_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              
              headerText(
                texto: 'Forgot Password',
                color: primaryColor,
                fontSize: 30.0
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Please enter your email address. You will receive a link to create a new password via email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
              ),
              _emailInput(),
              createButton(
                  context: context,
                  color: redColorPrimary,
                  labelButton: 'Send',
                  func: () {
                    _showAlert(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

void _showAlert(BuildContext context) {
  showAlerDialog(
      context,
      AssetImage('assets/icons/lock.png'),
      "Your password has been reset",
      "'You'll shortle receive an email with a code to setup a new password ",
      createButton(context: context, color: redColorPrimary, labelButton: 'Done', func: () {
        Navigator.pushNamed(context, 'login');
      }));
}
