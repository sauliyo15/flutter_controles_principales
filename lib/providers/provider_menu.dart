import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _ProviderMenu {
  List<dynamic> getOption = [];

  _ProviderMenu() {
    loadData();
  }

  void loadData() {
    rootBundle.loadString('data/json_menu.json').then((value) {
      Map datos = json.decode(value);
      print(datos['rutas']);
    });
  }
}

final menuProvider = _ProviderMenu();
