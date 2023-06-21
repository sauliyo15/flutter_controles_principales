//Importar el paquete de flutter
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Sauliyo'),
      ),
      body: Center(child: Text('Texto Scaffold')),
      backgroundColor: Colors.blueGrey.shade200,,
    );
  }
}
