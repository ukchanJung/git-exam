import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = <WordPair>[];
    items.addAll(generateWordPairs().take(100));
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(title: Text('Ssac')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(title: Text(items[index].toString())),
              Divider(
                height: 5,
                thickness: 2,
                color: Colors.orange,
              ),
            ],
          );
        },
        itemCount: items.length,
      ),
    );
  }
}