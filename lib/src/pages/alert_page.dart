// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert App Bar'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          _showAlert(context);
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.red, shape: StadiumBorder()),
        child: Text('Show Dialog'),
      )),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Titulo'),
          content:
              Column(mainAxisSize: MainAxisSize.min, children: const <Widget>[
            Text("Contenido de la tarjeta"),
            FlutterLogo(
              size: 100.00,
            ),
          ]),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Cancelar")),
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Aceptar"))
          ],
        );
      },
    );
  }
}
