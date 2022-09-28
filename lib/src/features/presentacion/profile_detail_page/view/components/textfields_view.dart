import 'package:agachaditos_app/src/utils/screns_size.dart';
import 'package:flutter/material.dart';

class TextFieldsProfileDetailView extends StatelessWidget {
  const TextFieldsProfileDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _createTextFieldUsername(context),
        _createTextFieldEmail(context),
        _createTextFieldPhone(context),
        _createTextFieldDate(context),
        _createTextFieldAdress(context)
      ],
    );
  }
}

Widget _createTextFieldUsername(BuildContext context) {
  return Container(
    width: screnWith?.getSceenHight(context: context, multiplear: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Username',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldEmail(BuildContext context) {
  return Container(
    width: screnWith?.getSceenHight(context: context, multiplear: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}


Widget _createTextFieldPhone(BuildContext context) {
  return Container(
    width: screnWith?.getSceenHight(context: context, multiplear: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: 'Phone',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDate(BuildContext context) {
  return Container(
    width: screnWith?.getSceenHight(context: context, multiplear: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Date of birth',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldAdress(BuildContext context) {
  return Container(
    width: screnWith?.getSceenHight(context: context, multiplear: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        maxLines: 3,
        decoration: InputDecoration(
            hintText: 'Delivery Address',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}
