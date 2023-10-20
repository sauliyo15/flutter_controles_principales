import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar App Bar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/media/F84FfjMW4AAlUYN?format=jpg&name=900x900'),
              radius: 30.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child:
                CircleAvatar(child: Text('SGC'), backgroundColor: Colors.white),
          )
        ],
      ),
      body: const Center(
        child: Text('Hello Avatar'),
      ),
    );
  }
}
