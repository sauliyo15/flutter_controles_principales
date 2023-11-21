import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferences extends StatelessWidget {
  const SharePreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferencias'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _setPreference,
              style: ElevatedButton.styleFrom(primary: Colors.redAccent),
              child: const Text('Crear Preferencias'),
            ),
            ElevatedButton(
              onPressed: _getPreference,
              child: const Text('Leer preferencias'),
            )
          ],
        ),
      ),
    );
  }

  _setPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('nombre', 'sauliyo');
    await preferences.setString('apellido', 'García');
    await preferences.setInt('fechaNacimiento', 1990);
    await preferences.setString('lugarNacimiento', 'España');
    await preferences.setString('destinoViaje', 'La Palma');
    await preferences.setInt('diasViaje', 10);
  }

  _getPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    print(preferences.getString('nombre'));
  }
}
