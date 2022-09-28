import 'package:agachaditos_app/src/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/BackButons/back_button.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_double.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PlaceDetailPage extends StatelessWidget {
  const PlaceDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: redColorPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: headerText(
            texto: 'Anadir a la Cesta 95.50 USDT',
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: redColorPrimary,
            expandedHeight: 320,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: 350,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1561758033-d89a9ad46330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')),
                  Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 1.5),
                      ),
                      width: double.infinity,
                      height: 350),
                  Wrap(
                    children: [
                      _promoButton(),
                      _infoplace(),
                      _infoPlaceStats(),
                      _offerBanner()
                    ],
                  )
                ],
              ),
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return backButton(context, Colors.white);
              },
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.share_sharp,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.book,
                    color: Colors.white,
                  ))
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            _headrs(texto: 'Populares'),
            _sliderCards(),
            _headrs(texto: 'Full Menu'),
            _menuList(context),
            _headrs(texto: 'Reviews'),
            _reviews(),
            _headrs(texto: 'YourRating'),
            _yourRating(),
            const SizedBox(height: 150.0),
          ]))
        ],
      ),
    );
  }
}

Widget _promoButton() {
  return Container(
    margin: const EdgeInsets.only(top: 127, left: 30.0, right: 15.0),
    width: double.infinity,
    height: 25,
    child: Row(
      children: [
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.5),
                backgroundColor: MaterialStateProperty.all(redColorPrimary),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)))),
            child: headerText(
                texto: 'Free Delivery', color: Colors.white, fontSize: 12))
      ],
    ),
  );
}

Widget _infoplace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: headerText(
            texto: 'Boon Lay Ho Huat Fried Prawm Noodle',
            color: Colors.white,
            fontSize: 30.0),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: Row(
          children: [
            Icon(
              Icons.location_on,
              color: gris,
            ),
            headerText(
                texto: '03 Jameon Manors Apt. 177',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ],
        ),
      ),
    ],
  );
}

Widget _infoPlaceStats() {
  return Container(
    margin: const EdgeInsets.only(top: 26.0),
    padding: const EdgeInsets.symmetric(horizontal: 40.0),
    height: 70.0,
    decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 19.0,
                  color: Colors.white,
                ),
                headerText(
                    texto: '4.5',
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)
              ],
            ),
            headerText(
                texto: '351 Ratings',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.bookmark,
                  size: 19.0,
                  color: Colors.white,
                ),
                headerText(
                    texto: '137k',
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)
              ],
            ),
            headerText(
                texto: 'Bookmark',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.image,
                  size: 19.0,
                  color: Colors.white,
                ),
                headerText(
                    texto: '346',
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)
              ],
            ),
            headerText(
                texto: 'Photo',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
      ],
    ),
  );
}

Widget _offerBanner() {
  return Container(
    height: 90.0,
    color: Color.fromRGBO(255, 237, 214, 1.0),
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(
                texto: 'New! Try Pickup',
                color: redColorPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
            headerText(
                texto:
                    'Pickup on your time. You order is \n ready when you are',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13.0)
          ],
        ),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.5),
                backgroundColor: MaterialStateProperty.all(redColorPrimary),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)))),
            child: headerText(
                texto: 'Order now ', color: Colors.white, fontSize: 13))
      ],
    ),
  );
}

Widget _headrs({texto = String}) {
  return Container(
    margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: headerDoubleText(
          textHeader: texto, textAction: '', func: () {}, color: Colors.black),
    ),
  );
}

Widget _sliderCards() {
  return Container(
    height: 210.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _cards(context);
            });
      },
    ),
  );
}

Widget _cards(context) {
  return Container(
    margin: EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image(
            width: 200,
            height: 100,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
                texto: 'Peutanut Chard with Dahi',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15)),
        Container(
            alignment: Alignment.centerLeft,
            child: headerText(
                texto: '9.50 USD',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 14)),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: headerText(
                  texto: 'Selecciona',
                  color: redColorPrimary,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              margin: const EdgeInsets.only(left: 80),
              child: const Icon(
                Icons.plus_one_sharp,
                size: 20,
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _menuList(BuildContext context) {
  return Container(
    child: Column(children: [
      _menuItem(context, 'Saladas', '2'),
      _menuItem(context, 'Chichen', '2'),
      _menuItem(context, 'Soups', '2'),
      _menuItem(context, 'Vegetables', '2'),
      _menuItem(context, 'Noodies', '2'),
      _menuItem(context, 'Drinks', '10'),
    ]),
  );
}

Widget _menuItem(BuildContext context, String texto, String itemCount) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
          bottom: BorderSide(
        color: gris,
      )),
    ),
    child: Column(
      children: [
        ListTile(
          title: headerText(
              texto: texto,
              fontWeight: FontWeight.w300,
              fontSize: 17.0,
              color: Colors.black),
          trailing: headerText(
              texto: itemCount,
              fontWeight: FontWeight.w300,
              fontSize: 17.0,
              color: Colors.black),
        ),
        _sliderCards()
      ],
    ),
  );
}

Widget _reviews() {
  return Container(
      height: 150,
      // padding: const EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _cardREview();
        },
      ));
}

Widget _cardREview() {
  var lorem =
      "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años.";
  return Container(
    margin: const EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 10, right: 10),
    width: 350,
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                width: 49.0,
                height: 43.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1515003197210-e0cd71810b5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerText(
                      texto: 'Mike smithson',
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  headerText(
                      texto: 'Australia 45 Reviews',
                      fontSize: 12,
                      color: gris,
                      fontWeight: FontWeight.bold),
                ],
              ),
            ),
            Spacer(),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: redColorPrimary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '4',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          child: headerText(
              texto: lorem,
              color: gris,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: headerText(
              texto: 'See full review',
              color: redColorPrimary,
              fontSize: 15,
              fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

Widget _yourRating() {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: redColorWithhalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '1',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: redColorWithhalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '2',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: redColorWithhalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '3',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: redColorPrimary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '4',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: redColorWithhalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '5',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(right: 10, left: 10),
          child: headerText(
            texto: 'We would love to hear more about ',
            color: gris,
            fontWeight: FontWeight.w400,
            fontSize: 12,
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10, left: 10),
          child: headerText(
            texto: '+ Edit your review ',
            color: redColorPrimary,
            fontWeight: FontWeight.w500,
            fontSize: 15,
            textAlign: TextAlign.left,
          ),
        )
      ],
    ),
  );
}
