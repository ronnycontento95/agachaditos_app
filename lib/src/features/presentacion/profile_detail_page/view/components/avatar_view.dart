import 'package:agachaditos_app/src/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/profile_detail_page/view/components/textfields_view.dart';
import 'package:agachaditos_app/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';

@immutable
class AvataView extends StatelessWidget {
  final String backgroundImage;
  AvataView({Key? key, required this.backgroundImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 142,
          height: 142,
          child: CircleAvatar(
            backgroundImage: NetworkImage(backgroundImage),
          ),
          decoration: createBoxDecorationWithShadows(
              borderRadius: BorderRadius.circular(65)),
        ),
        Transform.translate(
          offset: Offset(0 , -35),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: redColorPrimary, borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.camera_alt,
              color: whiteColor,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
