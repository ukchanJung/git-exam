import 'package:flutter/material.dart';
import 'package:ssac_app/model/user.dart';

class UserPicturePage extends StatelessWidget {
  final User user;

  UserPicturePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이름'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: user,
              child: Image.network(user.imageSrc),
            ),
          ],
        ),
      ),
    );
  }
}
