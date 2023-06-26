import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _ProviderMenu {
  List<dynamic> getOption = [];

  _ProviderMenu() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final value = await rootBundle.loadString('data/json_menu.json');
    Map datos = json.decode(value);
    getOption = datos['rutas'];
    return getOption;
  }
}

final menuProvider = _ProviderMenu();
