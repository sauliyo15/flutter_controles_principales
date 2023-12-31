import 'package:flutter/material.dart';

final _setIcons = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
  "input": Icons.input,
  "tune": Icons.tune,
  "list": Icons.list,
  "floating": Icons.flash_auto,
  "second_list": Icons.list_alt_rounded,
};

Icon getIcon(String nameIcon) {
  return Icon(
    _setIcons[nameIcon],
    color: Colors.blue,
  );
}
