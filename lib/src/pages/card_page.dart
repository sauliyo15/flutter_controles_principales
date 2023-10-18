import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card View'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_card1(), _card2()],
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

  Widget _card2() {
    return Card(
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Fotografía 1'),
        ),
        FadeInImage(
          placeholder: AssetImage('assets/gif_loading.gif'),
          image: NetworkImage(
              'https://pbs.twimg.com/media/F8oaR6kXMAMfdDF?format=jpg&name=900x900'),
          fadeInDuration: Duration(milliseconds: 500),
          //height: 500,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Cartel de Onda'),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Fotografía 1'),
        ),
        FadeInImage(
          placeholder: AssetImage('assets/gif_loading.gif'),
          image: NetworkImage(
              'https://pbs.twimg.com/media/F8ps6pTWsAAIIhX?format=jpg&name=large'),
          fadeInDuration: Duration(milliseconds: 500),
          //height: 500,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Cartel de Onda'),
        )
      ]),
    );
  }
}
