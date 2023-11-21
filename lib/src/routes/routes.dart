// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/card_page.dart';
import '../pages/input_page.dart';
import '../pages/share_preferences.dart';
import '../pages/slider_page.dart';
import '../pages/list_page.dart';
import '../pages/floating_button.dart';

//Asocia cada ruta con su funcion de direccionamiento (instanciación de nuevas clases-pantallas)
Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListPage(),
    'floating_button': (BuildContext context) => FloatingButton(),
    'share_preferences': (BuildContext context) => SharePreferences()
  };
}
