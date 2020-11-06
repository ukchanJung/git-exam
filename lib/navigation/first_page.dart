import 'package:flutter/material.dart';
import 'package:ssac_app/list_page.dart';
import 'package:ssac_app/navigation/second_page.dart';
import '../counter.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page'),),
      body: _buildBody(context),
    );
  }
}


Widget _buildBody(BuildContext context) {
  return Center(
    child: ListView(
      children: [
        ElevatedButton(onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage('전달')),
            );
        }, child: Text('ElevatedButton')),
        RaisedButton(onPressed: (){},child: Text('RaisedButton'),),
        ListTile(
          title: Text('카운터'),
          subtitle: Text('10/30'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Counter()));
          },
        ),
        Divider(),

        ListTile(
          title: Text('리스트'),
          subtitle: Text('10/30'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => List()));
          },
        ),

      ],
    ),
  );
}