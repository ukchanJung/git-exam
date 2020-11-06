import 'package:flutter/material.dart';
import 'package:ssac_app/model/user.dart';
import 'package:ssac_app/ui/user_detail_page.dart';
import 'package:ssac_app/widget/kakao_list_tile.dart';
import 'package:ssac_app/widget/mylisttile.dart';

class ThirdPage extends StatelessWidget {
  final List<User> _items = [
    User('사나', age: 30,imageSrc: 'https://img.huffingtonpost.com/asset/5ceb2f97240000530085474d.jpeg?cache=cjHGUeLFMo&ops=crop_0_94_1001_722,scalefit_630_noupscale'),
    User('나연', age: 27,imageSrc: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Im_Na-yeon_at_LG_Twins_vs_KIA_Tigers_game_on_April_1%2C_2018_%283%29.jpg/250px-Im_Na-yeon_at_LG_Twins_vs_KIA_Tigers_game_on_April_1%2C_2018_%283%29.jpg'),
    User('진영', age: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 정보'),
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          TextButton(
              onPressed: () {},
              child: Text(
                '내 정보',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return ListView(
      children: _items.map((user) {
        return InkWell(
          child: KakaoListTile(user),
          onTap: (){
            print(user.name);
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserDetailPage(user)),
              );
          },
        );
      }).toList(),
    );
  }
}
