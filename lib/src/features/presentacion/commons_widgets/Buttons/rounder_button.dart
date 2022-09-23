import 'package:flutter/material.dart';

Widget rounderButton({
  BuildContext? context,
  double width = 350.0,
  double height = 45.0,
  double radius = 20.0,
  bool isWithIcon = false,
  ImageProvider<Object>? icon,
  required Color color,
  required String labelButton,
  required Function func,
}) {
  return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(top: 20.0),
      child: isWithIcon
          ? _raisedButtonWithIcon(radius, icon!, labelButton, color, func)
          : _raisedButtonNotIcon(radius, labelButton, color, func));
}

Widget _raisedButtonWithIcon(double radius, ImageProvider<Object> icon,
    String labelButton, Color color, Function func) {
  return ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius)))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: icon,
          width: 20.0,
          height: 20.0,
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            labelButton,
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
      ],
    ),
    onPressed: () {},
  );
}

Widget _raisedButtonNotIcon(double radius, String labelButton, Color color, Function func) {
  return ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius)))),
    onPressed: () {
      func();
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            labelButton,
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
      ],
    ),
  );
}
