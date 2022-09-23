import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Cards/vertical_card.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_double.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Cards/populares_card.dart';
import 'package:flutter/material.dart';
//Color
import 'package:agachaditos_app/colors/colors.dart';
//Communc Widget
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      alignment: Alignment.centerLeft,
                      child: headerText(
                          texto: 'Search', color: Colors.black, fontSize: 30.0),
                    ),
                    _searchInput(
                      context,
                    ),
                    SizedBox(height: 20.0),
                    headerDoubleText(
                        textHeader: 'Recent searc',
                        textAction: 'Clear All',
                        func: () {}),
                    _sliderRecentSearch(context),
                    headerDoubleText(
                        textHeader: 'Recommend for you',
                        textAction: '',
                        func: () {}),
                    SizedBox(height: 20.0),
                    popularesCard(
                        context: context,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),
                        title: "Andy & Cindy Dinner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        ratings: "(233 ratings)",
                        buttonText: 'Delivery',
                        hasActionbutton: false),
                    popularesCard(
                        context: context,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),
                        title: "Andy & Cindy Dinner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        ratings: "(233 ratings)",
                        buttonText: 'Delivery',
                        hasActionbutton: false),
                    popularesCard(
                        context: context,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),
                        title: "Andy & Cindy Dinner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        ratings: "(233 ratings)",
                        buttonText: 'Delivery',
                        hasActionbutton: false),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: const EdgeInsets.only(top: 20.0),
    padding: const EdgeInsets.only(left: 5.0, top: 5.0),
    decoration: BoxDecoration(
      color: inputColorBackground,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 5.0),
          prefixIcon: Icon(
            Icons.search,
            color: gris,
          ),
          hintText: 'Search',
          border: const OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sliderRecentSearch(BuildContext context) {
  return Container(
    height: 190.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return cardVertical(
                  title: "Andy & Cindy's Dinner",
                  subtitle: '87 Botsford Circle Apt',
                  width: 160.0,
                  height: 120.0,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'));
            });
      },
    ),
  );
}
