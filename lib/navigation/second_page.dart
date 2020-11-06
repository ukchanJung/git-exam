// import 'dart:html';

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String _name;

  SecondPage(this._name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('닫기')),
          Text('$_name'),
        ],
      )),
    );
  }
}
