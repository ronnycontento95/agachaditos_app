import 'package:agachaditos_app/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class EmplyOrderView extends StatelessWidget {
  const EmplyOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        leading: Text(''),
        backgroundColor: whiteColor,
        title: headerText(
            texto: 'My order',
            color: primaryColor,
            fontSize: 27,
            fontWeight: FontWeight.w600),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                decoration:
                    BoxDecoration(color: whiteColor, shape: BoxShape.circle),
                child: Image(
                    width: 100,
                    height: 100,
                    image: AssetImage('assets/icons/emplyorder.png')),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: headerText(
                    texto: 'Card Emply',
                    color: gris,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: headerText(
                    texto:
                        'Good food is always cooking! Go ahead, order some yoummy items from the menu',
                    textAlign: TextAlign.center,
                    color: gris,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
