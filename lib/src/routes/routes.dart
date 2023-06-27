import 'package:flutter/material.dart';

import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/home.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };
}
