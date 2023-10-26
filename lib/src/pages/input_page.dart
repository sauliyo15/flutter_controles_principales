// ignore_for_file: prefer_final_fields, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _fecha = '';
  TextEditingController _textController = TextEditingController();

  String _opcionSeleccionada = 'Toyota';
  List marcas = ['Toyota', 'Audi', 'Honda', 'Seat', 'Peugeot'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Page"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        children: <Widget>[
          _createInput(),
          const Divider(),
          _createInputEmail(),
          const Divider(),
          _createInputPassword(),
          const Divider(),
          _createInputDate(context),
          const Divider(),
          _createDropDown(),
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
          suffixIcon: const Icon(Icons.accessibility),
          icon: const Icon(Icons.account_circle)),
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
          suffixIcon: const Icon(Icons.alternate_email),
          icon: const Icon(Icons.email)),
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
          suffixIcon: const Icon(Icons.lock_open),
          icon: const Icon(Icons.lock)),
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
          suffixIcon: const Icon(Icons.perm_contact_calendar),
          icon: const Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
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

  Widget _createDropDown() {
    return Row(
      children: <Widget>[
        const Icon(Icons.select_all),
        const SizedBox(
          width: 30.0,
        ),
        Expanded(
            child: DropdownButton(
          value: _opcionSeleccionada,
          items: getOptionsDropDown(),
          onChanged: (value) {
            setState(() {
              _opcionSeleccionada = value!;
            });
          },
        ))
      ],
    );
  }

  List<DropdownMenuItem<String>> getOptionsDropDown() {
    List<DropdownMenuItem<String>> list = [];
    marcas.forEach((element) {
      list.add(DropdownMenuItem(
        value: element,
        child: Text(element),
      ));
    });
    return list;
  }
}
