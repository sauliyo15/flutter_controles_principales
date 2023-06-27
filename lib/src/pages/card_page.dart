import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card View'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[_card1()],
      ),
    );
  }

  Widget _card1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Soy el título de la tarjeta'),
            leading: Icon(Icons.person, color: Colors.blue),
            subtitle: Text('Subtitulo de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Aceptar')),
              TextButton(onPressed: () {}, child: Text('Cancelar'))
            ],
          )
        ],
      ),
    );
  }
}
