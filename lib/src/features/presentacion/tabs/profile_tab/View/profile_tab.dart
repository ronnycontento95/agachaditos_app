import 'package:agachaditos_app/src/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'profile-detail'),
              child: _header()),
          _contentProfile()
        ],
      ),
    );
  }
}

Widget _header() {
  return Container(
    height: 200,
    color: bgGrey,
    padding: EdgeInsets.all(50),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          radius: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  headerText(
                      texto: 'Cameron Cook',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right, color: gris))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              height: 25,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.5),
                      backgroundColor:
                          MaterialStateProperty.all(redColorPrimary),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)))),
                  onPressed: () {},
                  child: Row(children: [
                    Icon(
                      Icons.panorama_rounded,
                      color: whiteColor,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    headerText(
                        texto: 'Vip Member', color: whiteColor, fontSize: null),
                  ])),
            )
          ],
        )
      ],
    ),
  );
}

Widget _contentProfile() {
  return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          ListTile(
            leading: Image(
                width: 29,
                height: 29,
                image: AssetImage('assets/icons/noti.png')),
            title: headerText(texto: 'Notfications', color: Colors.black),
            trailing: Icon(
              Icons.chevron_right,
              color: gris,
            ),
          ),
          ListTile(
            leading: Image(
                width: 29,
                height: 29,
                image: AssetImage('assets/icons/payicon.png')),
            title: headerText(texto: 'Payment methods', color: Colors.black),
            trailing: Icon(
              Icons.chevron_right,
              color: gris,
            ),
          ),
          ListTile(
            leading: Image(
                width: 29,
                height: 29,
                image: AssetImage('assets/icons/rewardicon.png')),
            title: headerText(texto: 'Reward credits', color: Colors.black),
            trailing: Icon(
              Icons.chevron_right,
              color: gris,
            ),
          ),
          ListTile(
            leading: Image(
                width: 29,
                height: 29,
                image: AssetImage('assets/icons/promoicon.png')),
            title: headerText(texto: 'My Promo code ', color: Colors.black),
            trailing: Icon(
              Icons.chevron_right,
              color: gris,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Image(
                width: 29,
                height: 29,
                image: AssetImage('assets/icons/settingicon.png')),
            title: headerText(texto: 'Settings ', color: Colors.black),
            trailing: Icon(
              Icons.chevron_right,
              color: gris,
            ),
          ),
          ListTile(
            leading: Image(
                width: 29,
                height: 29,
                image: AssetImage('assets/icons/inviteicon.png')),
            title: headerText(texto: 'Invite Friends', color: Colors.black),
            trailing: Icon(
              Icons.chevron_right,
              color: gris,
            ),
          ),
          ListTile(
            leading: Image(
                width: 29,
                height: 29,
                image: AssetImage('assets/icons/helpicon.png')),
            title: headerText(texto: 'Help Center', color: Colors.black),
            trailing: Icon(
              Icons.chevron_right,
              color: gris,
            ),
          ),
          ListTile(
            leading: Image(
                width: 29,
                height: 29,
                image: AssetImage('assets/icons/abouticon.png')),
            title: headerText(texto: 'About Us ', color: Colors.black),
            trailing: Icon(
              Icons.chevron_right,
              color: gris,
            ),
          ),
        ],
      ));
}
