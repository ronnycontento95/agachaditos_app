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
        selectedItemColor: Theme.of(context).colorScheme.secondary,
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
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Profile'),
        ]);
  }
}


