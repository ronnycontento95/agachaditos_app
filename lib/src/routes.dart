import 'package:agachaditos_app/src/features/presentacion/place_deatil_page/View/place_detail_page.dart';
import 'package:agachaditos_app/src/features/presentacion/profile_detail_page/view/profile_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:agachaditos_app/src/features/presentacion/tabs/tabs_page.dart';
import 'package:agachaditos_app/src/features/presentacion/welcome_page/View/welcome_page.dart';
import 'package:agachaditos_app/src/features/presentacion/sign_up_page/View/sign_up_page.dart';
import 'package:agachaditos_app/src/features/presentacion/login_page/View/login_page.dart';
import 'package:agachaditos_app/src/features/presentacion/forgot_password_page/View/forgot_password_page.dart';
import 'package:agachaditos_app/src/features/presentacion/search_page/View/searchView.dart';
import 'package:agachaditos_app/src/features/presentacion/filter_page/View/filter_page.dart';
import 'package:agachaditos_app/src/features/presentacion/collections_page/View/collections_page.dart';
import 'package:agachaditos_app/src/features/presentacion/collection_detail_page/View/collection_detail_page.dart';


final routes = <String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'fortgot-password' : (BuildContext context) => ForgotPassword(),
  'sign-up' : (BuildContext context) => SignUp(),
  'tabs' : (BuildContext context) => TabsPage(),
  'search' : (BuildContext context) => SearchPage(),
  'filter' : (BuildContext context) => FilterPage(),
  'collections' : (BuildContext context) => CollectionsPage(),
  'collectionsdetail' : (BuildContext context) => CollectionDetailPage(),
  'place-detail' : (BuildContext context) => PlaceDetailPage(),
  'profile-detail' : (BuildContext context) => ProfileDetailPage(),

};