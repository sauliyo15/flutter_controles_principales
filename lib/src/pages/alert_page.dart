import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert App Bar'),
      ),
      body: const Center(
        child: Text('Hello Alert'),
      ),
    );
  }
}
