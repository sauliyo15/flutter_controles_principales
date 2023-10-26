//Importar el paquete de flutter
import 'package:flutter/material.dart';

//Importamos la clase para poder instanciarla
import 'package:flutter_application_1/src/pages/alert_page.dart';
import 'package:flutter_application_1/src/routes/routes.dart';

void main() {
  //No es necesario instanciar una clase con la palabra new (se puede omitir)
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //Ruta inicial de la aplicacion
        initialRoute: '/',
        //Llamada al método de la clase routes.dart donde se obtienen todas las rutas y direccionamiento
        routes: getRoutes(),
        //Controlar rutas no definidas redireccionamos donde queramos (AlertPage)
        onGenerateRoute: (RouteSettings setting) {
          return MaterialPageRoute(
              builder: (BuildContext context) => AlertPage());
        });
  }
}
