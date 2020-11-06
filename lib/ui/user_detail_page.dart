import 'package:flutter/material.dart';
import 'package:ssac_app/model/user.dart';

class UserDetailPage extends StatelessWidget {
  final User user;

  UserDetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('이름'),),
      body: Column(
        children: [
          Image.network(user.imageSrc),
        ],
      ),
    );
  }
}
