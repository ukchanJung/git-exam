import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:ssac_app/counter.dart';
import 'package:ssac_app/list_page.dart';
import 'package:ssac_app/navigation/first_page.dart';
import 'package:ssac_app/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
      // home: HomePage(),
    );
  }
}

class Navi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ssac 실습'),
      ),
      body: Center(
        child: ListView(
          children: [
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
      ),
    );
  }
}

// stless
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sub Title',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('41'),
          ],
        ),
      ),
    );
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.lightBlueAccent, Icons.add_call, 'CALL'),
        _buildButtonColumn(Colors.lightBlueAccent, Icons.add_call, 'CALL'),
        _buildButtonColumn(Colors.lightBlueAccent, Icons.add_call, 'CALL'),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter layout demo'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      body: ListView(
        children: [
          Image.asset(
            'asset/image/lake.jpg',
            width: double.infinity,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection
        ],
      ),
    );
  }

  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          label,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}

// stless
class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        color: Colors.green,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sub Title',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('41'),
          ],
        ),
      ),
    );
  }
}
