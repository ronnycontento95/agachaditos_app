import 'package:flutter/material.dart';

Widget doneButton( BuildContext context, String labelButton ){
  return Container(
    width: 450.0,
    height: 55.0,
    margin: const  EdgeInsets.only(top: 50),
    child: RaisedButton(
      onPressed: (){
        Navigator.pushNamed(context, 'login');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Theme.of(context).accentColor,
      child: Text(
        labelButton,
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    ),
  );
}