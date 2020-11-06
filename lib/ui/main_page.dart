import 'package:flutter/material.dart';
import 'package:ssac_app/ui/first_page.dart';
import 'package:ssac_app/ui/second_page2.dart';
import 'package:ssac_app/ui/third_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0; ///초기값 지정이 필수

  List<Widget> _pages = [
    FirstPage2(), ///_page[0]
    SecondPage2(),///_page[1]
    ThirdPage()  ///_page[2]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Kakao T'),
      //   backgroundColor: Colors.white,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index){
          setState(() {
          _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'홈' ),
          BottomNavigationBarItem(icon: Icon(Icons.home_repair_service),label:'이용 서비스' ),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline),label:'내 정보' ),
        ],
      ),
      body: _pages[_index],
    );
  }
}
