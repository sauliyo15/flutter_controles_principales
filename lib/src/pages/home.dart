import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/provider_menu.dart';
import 'package:flutter_application_1/utils/utils_functions.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes de Flutter'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      initialData: [],
      future: menuProvider.loadData(),
      builder: (context, snapshot) {
        return ListView(children: _listItems(snapshot.data ?? [], context));
      },
    );
  }

  List<Widget> _listItems(List<dynamic> optListMenu, BuildContext context) {
    final List<Widget> optValueWidget = [];
    optListMenu.forEach((element) {
      final widgetvalue = ListTile(
        title: Text(element['texto'].toString()),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      optValueWidget.add(widgetvalue);
      optValueWidget.add(Divider());
    });
    return optValueWidget;
  }
}
