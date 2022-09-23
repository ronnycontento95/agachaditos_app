import 'package:agachaditos_app/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:flutter/cupertino.dart';

Widget headerDoubleText(
    {required String textHeader,
    required String textAction,
    required Function func}) {
  return Container(
    child: Row(
      children: [
        headerText(texto: textHeader, fontSize: 20),
        Spacer(),
        GestureDetector(
            onTap: func(),
            child: headerText(
                texto: textAction,
                color: redColorPrimary,
                fontWeight: FontWeight.w500,
                fontSize: 15.0))
      ],
    ),
  );
}
