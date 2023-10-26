import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar App Bar'),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/media/F84FfjMW4AAlUYN?format=jpg&name=900x900'),
              radius: 30.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
                backgroundColor: Colors.white, child: Text('SGC')),
          )
        ],
      ),
      body: const Center(
        child: Text('Hello Avatar'),
      ),
    );
  }
}
