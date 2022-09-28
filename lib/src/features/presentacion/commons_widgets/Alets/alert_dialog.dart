import 'package:agachaditos_app/src/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

void showAlerDialog(BuildContext context, ImageProvider<Object> imagePath,
    String headerTitle, String headerSubtitle, Widget doneButton) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: SizedBox(
            height: 400,
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: headerText(
                    texto: headerTitle,
                    color: primaryColor,
                    fontSize: 20.0
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Text(
                    headerSubtitle,
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ),
                doneButton
              ],
            ),
          ),
        );
      });
}
