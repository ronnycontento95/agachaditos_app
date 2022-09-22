import 'package:agachaditos_app/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

Widget popularesCard({
  required BuildContext context,
  required ImageProvider<Object> image,
  double marginTop = 0.0,
  double marginRight = 0.0,
  double marginBotton = 0.0,
  double marginLeft = 10.0,
  required String title,
  required String subtitle,
  required String review,
  required String ratings,
  required String buttonText,
  required bool hasActionbutton

}) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'place-detail');
        },
        child: Container(
          margin: EdgeInsets.only(
              top: marginTop,
              right: marginRight,
              bottom: marginBotton,
              left: marginLeft),
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    width: 80, height: 80, fit: BoxFit.cover, image: image),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: headerText(
                            texto: title,
                            color: Colors.black,
                            fontSize: 17.0)),
                    Container(  
                      child: Text(
                        subtitle,
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16.0,
                        ),
                         Text(
                          review,
                          style: const  TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            ratings,
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 35.0),
                          width: 110.0,
                          height: 18.0,
                          child: hasActionbutton ? ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(redColorPrimary),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)))),
                            onPressed: () {},
                            child: Text(
                              buttonText,
                              style: const TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ) : Text(''),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
