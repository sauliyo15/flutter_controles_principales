import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Componentes de Flutter'),
        ),
        body: _list(),
      ),
    );
  }

  Widget _list() {
    return ListView(
      children: _listItems(),
    );
  }

  List<Widget> _listItems() {
    return [
      ListTile(
        title: Text('Test List 1'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List 2'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List 3'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List 4'),
      ),
    ];
  }
}