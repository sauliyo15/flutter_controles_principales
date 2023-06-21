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
      backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed:
            setMessage, //Llamar al metodo sin parentesis para que no se ejecute inicialmente
        child: const Icon(Icons.add),
      ),
    );
  }

  setMessage() {
    print('HOLA');
  }
}
