
import 'package:flutter/material.dart';
import 'package:ssac_app/model/user.dart';

class MyListTile extends StatelessWidget {
  final User user;
  MyListTile(this.user);

  @override
  Widget build(BuildContext context) {
    return _buildItem(user);
  }
  Widget _buildItem(User user){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Column(
          children: [
            Image.network(
              'https://i.pinimg.com/originals/c8/9f/46/c89f460b30a5aa27db809fc7baa9ffa9.jpg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(child: ListTile(title: Text(user.name),subtitle: Text(user.age.toString()),)),
            ),
          ],
        ),
      ),
    );
  }
}
