import 'package:flutter/material.dart';

class ListViewSaul extends StatelessWidget {
  final itemsOptions = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Saul',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listview Saul'),
        ),
        body: ListView(
          children: _setItems(),
        ),
      ),
    );
  }

  List<Widget> _setItems() {
    List<Widget> list = [];
    for (var opt in itemsOptions) {
      final itemListTitle = ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text(opt),
        subtitle: Text('Subtitulo de $opt'),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
      list.add(itemListTitle);
      list.add(Divider());
    }
    return list;
  }
}
