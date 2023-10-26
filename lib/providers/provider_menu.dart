import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _ProviderMenu {
  List<dynamic> getOption = [];

  _ProviderMenu() {
    loadData();
  }

  //Se encarga de leer los datos de un archivo json, que almacena objetos {ruta, icono, texto}
  Future<List<dynamic>> loadData() async {
    final value = await rootBundle.loadString('data/json_menu.json');
    Map datos = json.decode(value);
    getOption = datos['rutas'];
    return getOption;
  }
}

//Se declara como variable final para estar disponible desde cualquier punto
final menuProvider = _ProviderMenu();
