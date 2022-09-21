

import 'package:agachaditos_app/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/header_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



Widget cardVertical({BuildContext? context, 
  double? width,
  double? height,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,

  }) {
  return Container(
    margin: const EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child:  Image(
            width: width,
            height: height,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(texto: title, fontSize: 17.0),
            headerText(
                texto: subtitle,
                color: gris,
                fontWeight: FontWeight.bold,
                fontSize: 13.0)
          ],
        )
      ],
    ),
  );
}