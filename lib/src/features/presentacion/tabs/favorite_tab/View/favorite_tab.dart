import 'package:agachaditos_app/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Cards/favourites_card.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({Key? key}) : super(key: key);

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            elevation: 0.5,
            leading: Text(''),
            backgroundColor: whiteColor,
            title: headerText(
                texto: 'My Favorite',
                color: primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  favouriteCard(
                      context: context,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=480&q=80'),
                      title: "Andy & Cindy Dinner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      ratings: "(233 ratings)",
                      buttonText: 'Free Delivery',
                      isFavourite: true,
                      hasActionbutton: false),
                  favouriteCard(
                      context: context,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=480&q=80'),
                      title: "Andy & Cindy Dinner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      ratings: "(233 ratings)",
                      buttonText: 'Free Delivery',
                      isFavourite: false,
                      hasActionbutton: false),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
