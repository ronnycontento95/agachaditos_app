import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:agachaditos_app/src/features/presentacion/tabs/my_order_tab/View/components/emply_view.dart';
import 'package:flutter/material.dart';
// Colors
import 'package:agachaditos_app/src/colors/colors.dart';

class MyOrderTab extends StatefulWidget {
  const MyOrderTab({Key? key}) : super(key: key);

  @override
  State<MyOrderTab> createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  @override
  Widget build(BuildContext context) {
    final emplyOrderStae = false;

    return Scaffold(
      backgroundColor: bgGrey,
      body: emplyOrderStae
          ? EmplyOrderView()
          : CustomScrollView(
              slivers: [
                SliverAppBar(
                  centerTitle: true,
                  elevation: 0.5,
                  leading: Text(''),
                  backgroundColor: whiteColor,
                  title: headerText(
                      texto: 'My order',
                      color: primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(children: [
                      _orders(context),
                      SizedBox(
                        height: 30,
                      ),
                      _checkoutResume(context)
                    ]),
                  )
                ]))
              ],
            ),
    );
  }
}

Widget _orders(BuildContext context) {
  return Column(children: [_cardOrders(context)]);
}

Widget _cardOrders(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(249, 248, 248, 1.0),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        Row(
          children: [_cardOrderTopContent()],
        ),
        Column(
          children: [_items(context), _items(context), _items(context)],
        ),
        _moreContent(context)
      ],
    ),
  );
}

Widget _cardOrderTopContent() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 7.0, bottom: 7.0, right: 7.0),
          child: headerText(
              texto: 'Little Creatures - Club Street',
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        Container(
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: gris,
                size: 16.0,
              ),
              headerText(
                  texto: '87 Botsford Circle Apt',
                  fontSize: 13.0,
                  color: gris,
                  fontWeight: FontWeight.w500),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                width: 110.0,
                height: 20.0,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.5),
                        backgroundColor:
                            MaterialStateProperty.all(redColorPrimary),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)))),
                    child: headerText(
                        texto: 'Free Delivery',
                        color: Colors.white,
                        fontSize: 11)),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget _items(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(
              texto: 'Special Gajananad Bhel',
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontSize: 15),
          headerText(
              texto: 'Mixed vegetables, ChichenEgg',
              color: gris,
              fontWeight: FontWeight.w300,
              fontSize: 12),
        ],
      ),
      trailing: headerText(
          texto: "\$ 17.20 usd'",
          color: gris,
          fontWeight: FontWeight.w500,
          fontSize: 12),
    ),
  );
}

Widget _moreContent(BuildContext context) {
  return Container(
    child: ListTile(
      title: headerText(
          texto: "Add more items",
          color: redColorPrimary,
          fontWeight: FontWeight.w600,
          fontSize: 17.0),
    ),
  );
}

Widget _checkoutResume(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        _itemCheckOutResume(
            title: 'Subtotal', value: '93.40 USD', context: context),
        _itemCheckOutResume(
            title: 'Tax & Fees', value: '3.40 USD', context: context),
        _itemCheckOutResume(title: 'Delivery', value: 'Free', context: context),
        _buttonCheckout(context)
      ],
    ),
  );
}

Widget _itemCheckOutResume(
    {title: String, value: String, context: BuildContext}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: headerText(
        texto: title,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
      ),
      trailing: headerText(
        texto: value,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
      ),
    ),
  );
}

Widget _buttonCheckout(BuildContext context) {
  return Container(
      width: double.infinity,
      height: 45.0,
      margin: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0.5),
            backgroundColor: MaterialStateProperty.all(redColorPrimary),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              child: headerText(
                  texto: 'Pedir',
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              // margin: const EdgeInsets.only(left: 10),
              child: headerText(
                  texto: '95.49 USD',
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        onPressed: () {},
      ));
}
