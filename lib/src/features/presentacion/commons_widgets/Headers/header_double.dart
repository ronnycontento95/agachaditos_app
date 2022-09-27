import 'package:flutter/material.dart';
import 'package:agachaditos_app/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';


Widget headerDoubleText(
    {required String textHeader,
    required String textAction,
    Color color = Colors.black,
    required Function func}) {
  return Container(
    child: Row(
      children: [
        headerText(texto: textHeader, fontSize: 20, color: color),
        Spacer(),
        GestureDetector(
            onTap: func(),
            child: headerText(
                texto: textAction,
                color: color,
                fontWeight: FontWeight.w500,
                fontSize: 15.0))
      ],
    ),
  );
}
