
import 'package:flutter/material.dart';
import 'package:ssac_app/model/user.dart';
import 'package:ssac_app/ui/user_detailPicture_page.dart';

class KakaoListTile extends StatelessWidget {
  final User user;
  KakaoListTile(this.user);

  @override
  Widget build(BuildContext context) {
    return _buildItem(user,context);
  }
  Widget _buildItem(User user,context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children:[
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserPicturePage(user)),
                );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                width: 80,
                height: 80,
                child: Hero(
                  tag: user,
                  child: Image.network(
                    user.imageSrc,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name,style: TextStyle(fontWeight: FontWeight.bold,),),
                Text(user.age.toString())
              ],
            ),
          ),
          Text('오후 2:00')
        ]
      ),
    );
  }
}
