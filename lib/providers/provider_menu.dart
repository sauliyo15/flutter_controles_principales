import 'package:flutter/services.dart' show rootBundle;

class _ProviderMenu {
  List<dynamic> getOption = [];

  _ProviderMenu() {
    loadData();
  }

  void loadData() {
    rootBundle.loadString('data/json_menu.json').then((value) => print(value));
  }
}

final menuProvider = _ProviderMenu();
