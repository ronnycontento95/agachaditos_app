import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:agachaditos_app/src/features/presentacion/widgets/back_button.dart';
import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: headerText(
              texto: 'Collections', fontSize: 17, color: Colors.black),
          leading: Builder(
            builder: (BuildContext context) {
              return backButton(context, Colors.black);
            },
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            children: [
              _card(context),
              _card(context),
              _card(context),
              _card(context),
              _card(context),
           

              ],
          ),
        )
      ],
    ));
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, 'collectionsdetail'),
    child: Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Image(
              width: 190,
              height: 165,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1529042410759-befb1204b468?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80'),
            ),
          ),
        ),
        Container(
          height: 165,
          width: 190,
          margin: const EdgeInsets.all(5),

          decoration: BoxDecoration(
              color:  const Color.fromRGBO(0, 0, 0, 1.3),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              headerText(
                  texto: 'Asia',
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              headerText(
                  texto: '128 place',
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ],
          ),
        )
      ],
    ),
  );
}
