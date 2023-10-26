// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/provider_menu.dart';
import 'package:flutter_application_1/utils/utils_functions.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes de Flutter'),
      ),
      //Llamamos al metodo _list que devolvera una lista de Widgets
      body: _list(),
    );
  }

  //Metodo que devuelve un array de widgets
  Widget _list() {
    return FutureBuilder(
      initialData: [],
      //Utiliza la llamada a la variable global (provider) para cargar las rutas del archivo json
      future: menuProvider.loadData(),
      builder: (context, snapshot) {
        //Se llama al metodo _listItems para crear los elementos del menu e incorporarlos al ListView
        return ListView(children: _listItems(snapshot.data ?? [], context));
      },
    );
  }

  //Metodo que retorna a partir de los datos del json una lista de Wigets que serán todas las filas/opciones del ListView
  List<Widget> _listItems(List<dynamic> optListMenu, BuildContext context) {
    final List<Widget> optValueWidget = [];
    //Para cada elemento extraido del json se crea la opcion con su titulo, icono, y navegacion (ruta)
    optListMenu.forEach((element) {
      final widgetvalue = ListTile(
        title: Text(element['texto'].toString()),
        //Llamada al metodo de la clase utils_function.dart para obtener que icono se requiere
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      //Se añade el elemento creado a la lista de elementos
      optValueWidget.add(widgetvalue);
      //Se añade un separador o divider
      optValueWidget.add(Divider());
    });
    //Se retorna la lista de Widgets (elementos del ListView)
    return optValueWidget;
  }
}
