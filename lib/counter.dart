import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  ///이부분의 이름은 'class Field' 라고 함
  int countNum = 0;/// 카운팅 숫자

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('click');
          setState(() {
            countNum++;
          });
        },
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '카운터',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            '$countNum',
            style: TextStyle(fontSize: 72),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                  child: Text('초기화'),
                  onPressed: () {
                    setState(() {
                      countNum = 0;
                    });
                  }),
              RaisedButton(
                  child: Text('증가'),
                  onPressed: () {
                    setState(() {
                      countNum++;
                    });
                  }),
              RaisedButton(
                  child: Text('감소'),
                  onPressed: () {
                    setState(() {
                      countNum--;
                    });
                  }),
            ],
          )
        ],
      )),
    );
  }
}
