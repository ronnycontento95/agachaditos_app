import 'package:flutter/material.dart';

const borderRadius = BorderRadius.all(Radius.circular(20));
const boxShadows = [
  BoxShadow(
      color: Color.fromRGBO(210, 211, 215, 1.0),
      offset: Offset(0, 5),
      blurRadius: 10.0)
];

Decoration createBoxDecorationWithShadows(
    {BorderRadiusGeometry borderRadius = borderRadius,
    List<BoxShadow> boxShadows = boxShadows,
    Color ContainerColor = Colors.white}) {
  return BoxDecoration(
      borderRadius: borderRadius, color: ContainerColor, boxShadow: boxShadows);
}
