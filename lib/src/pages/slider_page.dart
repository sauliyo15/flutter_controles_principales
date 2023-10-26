import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPage();
}

class _SliderPage extends State<SliderPage> {
  double _valueSlider = 100.0;
  bool _blockCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Page'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            const Divider(),
            _createImage(),
            const Divider(),
            _createImage2(),
            const Divider(),
            _createSwitch(),
            const Divider(),
            _createCheck()
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        divisions: 20,
        label: 'Visualizando Slider',
        value: _valueSlider,
        min: 10.0,
        max: 400,
        onChanged: (_blockCheck)
            ? null
            : (value) {
                setState(() {
                  _valueSlider = value;
                });
              });
  }

  Widget _createImage() {
    return Column(
      children: <Widget>[
        Image(
          image: const NetworkImage(
              'https://images.prismic.io/carwow/951a1f9f-3783-4394-8c13-a0ce4146f7f7_A202488_medium+%281%29.jpg'),
          width: _valueSlider,
          fit: BoxFit.contain,
        )
      ],
    );
  }

  Widget _createImage2() {
    return Column(
      children: <Widget>[
        Image(
          image: const NetworkImage(
              'https://www.km77.com/images/medium/9/4/9/7/med-a3-sedan-exterior.349497.jpg'),
          width: _valueSlider,
          fit: BoxFit.contain,
        )
      ],
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
        title: const Text('Bloquear Slider'),
        value: _blockCheck,
        onChanged: (valor) {
          setState(() {
            _blockCheck = valor;
          });
        });
  }

  Widget _createCheck() {
    return CheckboxListTile(
        title: const Text('Bloquear Slider'),
        value: _blockCheck,
        onChanged: (valor) {
          setState(() {
            _blockCheck = valor!;
          });
        });
  }
}
