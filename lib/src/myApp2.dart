import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  static const String _titulo = 'Titulo SAUL';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _titulo,
      home: MyHomeStatefulWidget(),
    );
  }
}

class MyHomeStatefulWidget extends StatefulWidget {
  MyHomeStatefulWidget();

  @override
  _MyHomeStatefulWidgetState createState() => _MyHomeStatefulWidgetState();
}

class _MyHomeStatefulWidgetState extends State<MyHomeStatefulWidget> {
  int _cuenta = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Full StateWidget Bar'),
        ),
        body: Center(child: Text('cuenta: $_cuenta')),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            _cuenta++;
          }),
          child: const Icon(Icons.add),
          tooltip: 'Presion',
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}
