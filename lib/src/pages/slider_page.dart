import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPage();
}

class _SliderPage extends State<SliderPage> {
  double _valueSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            Divider(),
            _createImage(),
            Divider(),
            _createImage2()
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
        onChanged: (double value) {
          setState(() {
            _valueSlider = value;
          });
        });
  }

  Widget _createImage() {
    return Column(
      children: <Widget>[
        Image(
          image: NetworkImage(
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
          image: NetworkImage(
              'https://www.km77.com/images/medium/9/4/9/7/med-a3-sedan-exterior.349497.jpg'),
          width: _valueSlider,
          fit: BoxFit.contain,
        )
      ],
    );
  }
}
