import 'package:flutter/material.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Cards/favourites_card.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:agachaditos_app/src/features/presentacion/widgets/back_button.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const Image(
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1606787366850-de6330128bfc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 1.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: headerText(
                        texto: "Asia \nRestaurant",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return backButton(context, Colors.white);
              },
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    child: headerText(
                        texto: '128 places',
                        color: const Color.fromRGBO(51, 58, 77, 1.0),
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  Column(
                    children: [
                      favouriteCard(
                          context: context,
                          image: const NetworkImage(
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
                          image: const NetworkImage(
                              'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=480&q=80'),
                          title: "Andy & Cindy Dinner",
                          subtitle: "87 Botsford Circle Apt",
                          review: "4.8",
                          ratings: "(233 ratings)",
                          buttonText: 'Free delivery',
                          isFavourite: false,
                          hasActionbutton: false),
                      favouriteCard(
                          context: context,
                          image:const  NetworkImage(
                              'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=480&q=80'),
                          title: "Andy & Cindy Dinner",
                          subtitle: "87 Botsford Circle Apt",
                          review: "4.8",
                          ratings: "(233 ratings)",
                          buttonText: 'Free delivery',
                          isFavourite: false,
                          hasActionbutton: false),
                      favouriteCard(
                          context: context,
                          image: const NetworkImage(
                              'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=480&q=80'),
                          title: "Andy & Cindy Dinner",
                          subtitle: "87 Botsford Circle Apt",
                          review: "4.8",
                          ratings: "(233 ratings)",
                          buttonText: 'Free delivery',
                          isFavourite: false,
                          hasActionbutton: false),
                    ],
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
