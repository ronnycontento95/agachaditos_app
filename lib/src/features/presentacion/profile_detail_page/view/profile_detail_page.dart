import 'package:agachaditos_app/src/features/presentacion/profile_detail_page/view/components/avatar_view.dart';
import 'package:agachaditos_app/src/features/presentacion/profile_detail_page/view/components/textfields_view.dart';
import 'package:agachaditos_app/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';
import 'package:agachaditos_app/src/colors/colors.dart';
import 'package:agachaditos_app/src/utils/screns_size.dart';

import 'package:agachaditos_app/src/features/presentacion/commons_widgets/BackButons/back_button.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    //Obtener el tamano de la pantalla
    //  double widhtScreen = MediaQuery.of(context).size.width;
    //  double heightScreen = MediaQuery.of(context).size.height *0.6;

    return Scaffold(
      backgroundColor: bgGrey,
      appBar: AppBar(
        centerTitle: true,
        title:
            headerText(texto: 'Edit Profle', fontSize: 17, color: Colors.black),
        backgroundColor: whiteColor,
        elevation: 0.4,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
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
              margin: const EdgeInsets.only(top: 100, left: 15, right: 15),
              width:
                  screnWith?.getScreenWith(context: context, multiplear: 0.65),
              height: screnHeight?.getSceenHight(context: context),
              child: Column(children: [
                Transform.translate(
                    offset: Offset(0, -60),
                    child: AvataView(
                      backgroundImage:
                          'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    )),
                TextFieldsProfileDetailView()
              ]),
              decoration:
                  createBoxDecorationWithShadows(ContainerColor: Colors.white),
            )
          ]))
        ],
      ),
    );
  }
}
