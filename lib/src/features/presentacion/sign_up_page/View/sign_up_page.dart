import 'package:agachaditos_app/src/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/BackButons/back_button.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Buttons/create_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                'Create an account',
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              _usernameInput(context),
              _emailInput(context),
              _phoneInput(context),
              _dateInput(context),
              _passwordInput(context),
             createButton(color: redColorPrimary, labelButton: 'Sing Up', func: (){
              Navigator.pushNamed(context, 'login');
             }),
              Container(
                padding:  const  EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                child: const
                Text(
                  'By clicking Sign up you agree to the following Terms and Conditions without reservation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _usernameInput(BuildContext context){
  return Container(
    margin: const  EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: gris,
      borderRadius: BorderRadius.circular(30.0)
    ),
      child: const  TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Username',
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          )
        ),
      ),
  );
}
Widget _emailInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color:gris,
        borderRadius: BorderRadius.circular(30.0)
    ),
    child: const  TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}
Widget _phoneInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color:gris,
        borderRadius: BorderRadius.circular(30.0)
    ),
    child: const  TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Phone',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}
Widget _dateInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color:gris,
        borderRadius: BorderRadius.circular(30.0)
    ),
    child: const  TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          hintText: 'Date of birth',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}
Widget _passwordInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color:gris,
        borderRadius: BorderRadius.circular(30.0)
    ),
    child: const  TextField(
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
              borderSide: BorderSide.none
          )
      ),
    ),
  );
}