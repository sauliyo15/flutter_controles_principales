import 'package:flutter/material.dart';

final _setIcons = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
};

Icon getIcon(String nameIcon) {
  return Icon(
    _setIcons[nameIcon],
    color: Colors.blue,
  );
}
