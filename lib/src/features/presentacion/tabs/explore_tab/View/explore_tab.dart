import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Cards/populares_card.dart';
import 'package:flutter/material.dart';
//Color
import 'package:agachaditos_app/colors/colors.dart';
//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                _topBar(context),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.centerLeft,
                    child: headerText(
                        texto: 'Discover this week',
                        color: primaryColor,
                        fontSize: 30.0)),
                _sliderCards(),
                GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'collections'),
                    child: _headers(context, 'Popular this Week', 'Show All')),
                popularesCard(
                    context: context,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),
                    title: "Andy & Cindy Dinner",
                    subtitle: "87 Botsford Circle Apt",
                    review: "4.8",
                    ratings: "(233 ratings)",
                    buttonText: 'Delivery',
                    hasActionbutton: true),
                popularesCard(
                    context: context,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),
                    title: "Andy & Cindy Dinner",
                    subtitle: "87 Botsford Circle Apt",
                    review: "4.8",
                    ratings: "(233 ratings)",
                    buttonText: 'Delivery',
                    hasActionbutton: true),
                popularesCard(
                    context: context,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),
                    title: "Andy & Cindy Dinner",
                    subtitle: "87 Botsford Circle Apt",
                    review: "4.8",
                    ratings: "(233 ratings)",
                    buttonText: 'Delivery',
                    hasActionbutton: true),
                GestureDetector(
                    onTap: () { Navigator.pushNamed(context, 'collections');
                    } ,
                    child: _headers(context, 'Collections', 'Show all')),
                _sliderCollections(),
              ],
            ),
          )
        ]))
      ],
    ));
  }

  Widget _topBar(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'search'),
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(children: [
              Icon(Icons.search, size: 20.0, color: gris),
              Text(
                'Search',
                style: TextStyle(
                  color: gris,
                  fontSize: 17.0,
                ),
              )
            ]),
          ),
        ),
        Container(
            width: 45.0,
            height: 45.0,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Color.fromRGBO(209, 209, 214, 1.0),
                borderRadius: BorderRadius.circular(30)),
            child: IconButton(
              icon: const Icon(
                Icons.filter_list,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'filter');
              },
            ))
      ],
    );
  }

  //Swiper
  Widget _sliderCards() {
    return SizedBox(
      height: 350.0,
      child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _targeta(context);
            },
          );
        },
      ),
    );
  }

  //Targeta
  Widget _targeta(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: const Image(
              width: 210.0,
              height: 250.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Andy & Cindy's Dinner",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "87 Botsford Circle Apt",
                  style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  const Text(
                    "4.8",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                  Text(
                    "233 ratings",
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    height: 18.0,
                    width: 80.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(redColorPrimary),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)))),
                      onPressed: () {},
                      child: const Text(
                        'Delivery',
                        style: TextStyle(
                          fontSize: 11.0,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _headers(BuildContext context, String textoHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child:
            headerText(texto: textoHeader, color: primaryColor, fontSize: 20.0),
      ),
      const Spacer(),
      GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Text(
              textAction,
              style:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
            ),
            const Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _populares(
  BuildContext context,
  String foto,
) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  image: NetworkImage(foto)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: headerText(
                          texto: "Andy & Cindy's Diner",
                          color: Colors.black,
                          fontSize: 17.0)),
                  Container(
                    child: Text(
                      '87 botsford circle apt',
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
                      const Text(
                        '4.5',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          '230 ratings',
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
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(redColorPrimary),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)))),
                          onPressed: () {},
                          child: const Text(
                            'Delivery',
                            style: TextStyle(
                              fontSize: 11.0,
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
      )
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 200.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _targetaCollections(context);
            });
      },
    ),
  );
}

Widget _targetaCollections(context) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
          ),
        ),
      ],
    ),
  );
}
