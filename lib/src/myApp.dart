//Importar el paquete de flutter
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/home_pages.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Center(child: HomePage()));
  }
}
