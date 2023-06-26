//Importar el paquete de flutter
import 'package:flutter/material.dart';

//Importamos la clase para poder instanciarla
import 'package:flutter_application_1/src/myApp.dart';
import 'package:flutter_application_1/src/myApp2.dart';
import 'package:flutter_application_1/src/pages/alert_page.dart';
import 'package:flutter_application_1/src/pages/avatar_page.dart';
import 'package:flutter_application_1/src/pages/home.dart';
import 'package:flutter_application_1/src/pages/listview.dart';

void main() {
  //No es necesario instanciar una clase con la palabra new (se puede omitir)
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
      },
    );
  }
}
