import 'package:flutter/material.dart';
//Colors
import 'package:agachaditos_app/src/colors/colors.dart';
//Communc
import 'package:agachaditos_app/src/features/presentacion/filter_page/View/components/list_title_checked.dart';
import 'package:agachaditos_app/src/features/presentacion/filter_page/View/components/price_filter.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:agachaditos_app/src/features/presentacion/filter_page/View/components/cuisines_filters.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //Sort By BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighTolow = false;
  bool costLowTohight = false;
  bool mostPopular = false;

  //Filter Boolenas
  bool openNow = false;
  bool creditCars = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: headerText(
          texto: 'Filters',
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        leading: Container(
            padding: const EdgeInsets.only(top: 20, left: 7.0),
            child: headerText(
                texto: 'Reset',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 17.0)),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 7.0, right: 20),
              child: headerText(
                  texto: 'Done',
                  color: redColorPrimary,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: headerText(
                    texto: 'Cuisines',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17)),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CuisinesFilter()),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(
                  texto: 'SORT BY',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            _shortBy(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(
                  texto: 'FILTER',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            _filterBytContainer(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(
                  texto: 'PRICE',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            PriceFilter()
          ]))
        ],
      ),
    );
  }

  Widget  _filterBytContainer() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileChecked(
              texto: 'Open Now',
              isActive: openNow,
              func: () {
                // setState(() => topRated = !topRated);
              },
            ),
            ListTileChecked(
                texto: 'Credit Cards',
                isActive: creditCars,
                func: () {
                  // setState(() => nearMe = !nearMe);
                }),
            ListTileChecked(
                texto: 'Alcohol Served',
                isActive: alcoholServed,
                func: () {
                  // setState(() => costHighTolow = !costHighTolow);
                }),
            
          ],
        ));
  }

    Widget _shortBy () {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileChecked(
              texto: 'Top Rated',
              isActive: topRated,
              func: () {
                // setState(() => topRated = !topRated);
              },
            ),
            ListTileChecked(
                texto: 'Nearnest Me',
                isActive: nearMe,
                func: () {
                  // setState(() => nearMe = !nearMe);
                }),
            ListTileChecked(
                texto: 'Cost Hight to Low',
                isActive: costHighTolow,
                func: () {
                  // setState(() => costHighTolow = !costHighTolow);
                }),
            ListTileChecked(
                texto: 'Cost Low to Hiht',
                isActive: costLowTohight,
                func: () {
                  // setState(() => costLowTohight = !costLowTohight);
                }),
            ListTileChecked(
                texto: 'Most popular',
                isActive: mostPopular,
                func: () {
                  // setState(() => mostPopular = !mostPopular);
                }),
          ],
        ));
  }
}
