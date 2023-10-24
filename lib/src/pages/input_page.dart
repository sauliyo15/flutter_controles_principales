import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _fecha = '';
  TextEditingController _textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Page"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createInputEmail(),
          Divider(),
          _createInputPassword(),
          Divider(),
          _createInputDate(context),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su nombre aquí',
          labelText: 'Nombre',
          helperText: 'Escriba solo su nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
    );
  }

  Widget _createInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su email aquí',
          labelText: 'Email',
          helperText: 'Escriba solo su email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
    );
  }

  Widget _createInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su contraseña',
          labelText: 'Contraseña',
          helperText: 'Escriba solo su contraseña',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)),
    );
  }

  Widget _createInputDate(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _textController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su fecha de nacimiento',
          labelText: 'Fecha de nacimiento',
          helperText: 'Escriba solo su fecha de nacimiento',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selecDate(context);
      },
    );
  }

  _selecDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2028),
    );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _textController.text = _fecha;
      });
    }
  }
}
