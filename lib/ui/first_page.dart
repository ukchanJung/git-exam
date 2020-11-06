import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('홈'),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: ListView(
            children: [_buildMenuSection(), _buildAdSection(), _buildNotSection()],
          ),
        ));
  }

  Widget _buildItem(IconData icon, String title) {
    return Column(
      children: [Icon(icon, size: 80), Text(title)],
    );
  }

  Widget _buildMenuSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(onTap: () {}, child: _buildItem(Icons.local_taxi, 'Taxi')),
            _buildItem(Icons.local_taxi, '블랙'),
            _buildItem(Icons.local_taxi, '바이크'),
            _buildItem(Icons.local_taxi, '대형'),
          ],
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildItem(Icons.local_taxi, 'Taxi'),
            _buildItem(Icons.local_taxi, '블랙'),
            _buildItem(Icons.local_taxi, '바이크'),
            Opacity(
              opacity: 0,
              child: _buildItem(Icons.local_taxi, '대형'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAdSection() {
    return CarouselSlider(
      items: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.red,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.green,
          ),
        ),
      ],
      options: CarouselOptions(height: 400.0, autoPlay: true, autoPlayInterval: Duration(milliseconds: 5000)),
    );
  }

  Widget _buildNotSection() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('[이벤트] Ssac 3번쨰 수업'),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('[이벤트] Ssac 3번쨰 수업'),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('[이벤트] Ssac 3번쨰 수업'),
        ),
      ],
    );
  }
}
