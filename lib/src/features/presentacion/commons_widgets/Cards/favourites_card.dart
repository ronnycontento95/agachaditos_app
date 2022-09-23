import 'package:agachaditos_app/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget favouriteCard(
    {required BuildContext context,
    required ImageProvider<Object> image,
    double marginTop = 15.0,
    double marginRight = 0.0,
    double marginBotton = 0.0,
    double marginLeft = 0.0,
    required String title,
    required String subtitle,
    required String review,
    required String ratings,
    required String buttonText,
    required bool hasActionbutton,
    bool isFavourite = true}) {
  return Container(
    margin: EdgeInsets.only(
      top: marginTop,
      right: marginRight,
      bottom: marginBotton,
      left: marginLeft,
    ),
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              offset: Offset(0, 5),
              blurRadius: 10.0)
        ]),
    child: Row(
      
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: image,
              width: 90.0,
              height: 90.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          texto: title,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17)),
                  const SizedBox(
                    width: 25.0,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        size: 35.0,
                        color: isFavourite ? redColorPrimary : gris,
                      ))
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 5.0),
                  child: headerText(
                      texto: subtitle,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  headerText(
                      texto: review,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                  headerText(
                      texto: ratings,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15.0),
                    width: 95,
                    height: 25.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0.5),
                          backgroundColor:
                              MaterialStateProperty.all(redColorPrimary),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)))),
                      onPressed: () {},
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
