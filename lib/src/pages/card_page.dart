import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[_card1(), _card2()],
      ),
    );
  }

  Widget _card1() {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            title: Text('Soy el título de la tarjeta'),
            leading: Icon(Icons.person, color: Colors.blue),
            subtitle: Text('Subtitulo de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: const Text('Aceptar')),
              TextButton(onPressed: () {}, child: const Text('Cancelar'))
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
          padding: const EdgeInsets.all(10.0),
          child: const Text('Fotografía 1'),
        ),
        const FadeInImage(
          placeholder: AssetImage('assets/gif_loading.gif'),
          image: NetworkImage(
              'https://imagenes.elpais.com/resizer/jj2EAqDSFdIDijvFESa3htjhVC8=/1960x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/O3EM3PGASOYJSJ23I4X6TC6WZI.jpg'),
          fadeInDuration: Duration(milliseconds: 500),
          //height: 500,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: const Text('Orcas nadando'),
        ),
        const Divider(),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: const Text('Fotografía 2'),
        ),
        const FadeInImage(
          placeholder: AssetImage('assets/gif_loading.gif'),
          image: NetworkImage(
              'https://media.istockphoto.com/id/1227190928/es/foto/killer-whale-orcinus-orca-pair-leaping-canada.jpg?s=612x612&w=0&k=20&c=0Hvx4B9cEn9kPyBaze4OuRtwGbGTOeT0F-JbRoJsK2M='),
          fadeInDuration: Duration(milliseconds: 1000),
          //height: 500,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: const Text('Orcas saltando'),
        )
      ]),
    );
  }
}
