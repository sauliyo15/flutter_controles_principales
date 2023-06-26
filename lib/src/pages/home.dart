import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/provider_menu.dart';
import 'package:flutter_application_1/utils/utils_functions.dart';

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
    return FutureBuilder(
      future: menuProvider.loadData(),
      builder: (context, snapshot) {
        print(snapshot.data);
        return ListView(children: _listItems(snapshot.data ?? []));
      },
    );
  }

  List<Widget> _listItems(List<dynamic> optListMenu) {
    final List<Widget> optValueWidget = [];
    optListMenu.forEach((element) {
      final widgetvalue = ListTile(
        title: Text(element['texto'].toString()),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );
      optValueWidget.add(widgetvalue);
      optValueWidget.add(Divider());
    });
    return optValueWidget;
  }
}
