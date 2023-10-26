//Importar el paquete de flutter
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Boton Flotante'),
        ),
        body: Center(child: Text('HOLA')),
        backgroundColor: Colors.blueGrey.shade200,
        floatingActionButton: FloatingActionButton(
          onPressed:
              setMessage, //Llamar al metodo sin parentesis para que no se ejecute inicialmente
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }

  setMessage() {
    print('HOLA');
  }
}
