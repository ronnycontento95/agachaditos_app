import 'package:flutter/material.dart';
//Colors
import 'package:agachaditos_app/src/colors/colors.dart';
//Commons
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';

class ListTileChecked extends StatefulWidget {
  String texto;
  Function()? func;
  bool isActive;
  ListTileChecked(
      {Key? key,
      required this.texto,
      required this.isActive,
      required this.func})
      : super(key: key);

  @override
  State<ListTileChecked> createState() => _ListTileCheckedState();
}

class _ListTileCheckedState extends State<ListTileChecked> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
            context: context,
            texto: widget.texto,
            isActive: widget.isActive,
            func: widget.func)
      ],
    );
  }
}

Widget listTiles(
    {required BuildContext context,
    texto = String,
    isActive = bool,
    required Function()? func}) {
  return Container(
    height: 40,
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      onTap: func!(),
      title: headerText(
          texto: texto,
          color: isActive ? redColorPrimary : Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 17),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? redColorPrimary : gris,
            )
          : const Text(''),
    ),
  );
}
