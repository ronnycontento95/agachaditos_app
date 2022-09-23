import 'package:agachaditos_app/colors/colors.dart';
import 'package:agachaditos_app/src/features/presentacion/commons_widgets/Alets/alert_dialog.dart';
import 'package:agachaditos_app/src/features/presentacion/tabs/explore_tab/View/explore_tab.dart';
import 'package:agachaditos_app/src/features/presentacion/tabs/favorite_tab/View/favorite_tab.dart';
import 'package:agachaditos_app/src/features/presentacion/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:agachaditos_app/src/features/presentacion/tabs/profile_tab/View/profile_tab.dart';
import 'package:flutter/material.dart';

//tabs
// import 'my_order_tab.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _perdirLocations(context);
    });
  }

  //Crear la lista de paginas o tabs que se crea dentro de la carpeta
  List<Widget> _widgetOption = [
    ExploreTab(),
    MyOrderTab(),
    FavoriteTab(),
    ProfileTab(),
  ];

  int _selectedItemIndex = 0;
  //Creamos la funcion para crear el index cuando el usuario de clic
  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: redColorPrimary,
        unselectedItemColor: Colors.grey,
        //Igualamos los tabs con la lista de index
        currentIndex: _selectedItemIndex,
        showUnselectedLabels: true,
        onTap: _cambiarWidget,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'My Order'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Profile'),
        ]);
  }

  _perdirLocations(BuildContext context) async {
    showAlerDialog(
        context,
        AssetImage("assets/icons/locations.png"),
        "Enable Your Locations",
        "Please allow to use your locatios to show nearby restaurant on the map",
        _doneButton(context, "Enable Locations"));
  }
}

Widget _doneButton(
  BuildContext context,
  String labelButton,
) {
  return Container(
    width: 450.0,
    height: 55.0,
    margin: const EdgeInsets.only(top: 50),
    child: ElevatedButton(
      onPressed: () {
        print("Habilitar Geolocation");
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(redColorPrimary),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)))),
      child: Text(
        labelButton,
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    ),
  );
}
