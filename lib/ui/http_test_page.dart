import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ssac_app/model/album.dart';

Future<Album> fetchAlbum() async {
  // await: Future가 종료되는 것을 기다린다, async 키워드가 붙어있는 메서드 안에서만 사용 가능
  final http.Response response = await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    //jsonDecode로 json 형태의 String을 Map 형태로 변환
    Map<String, dynamic> json = jsonDecode(response.body);

    //변환된 Map형태의 json
    Album album = Album.fromJson(json);
    return album;
  } else {
    throw Exception('Failed to load album');
  }
}

Future<List<Album>> fetchAlbums() async {
  // await: Future가 종료되는 것을 기다린다, async 키워드가 붙어있는 메서드 안에서만 사용 가능
  final http.Response response = await http.get('https://jsonplaceholder.typicode.com/albums');

  if (response.statusCode == 200) {
    List<Album> albums = [];
    //jsonDecode로 json 형태의 String을 Map 형태로 변환
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => Album.fromJson(e)).toList();
    // final json = jsonDecode(response.body);
    // json.foreach((element){
    //   Album album = Album.fromJson(json);
    //   albums.add(album);
    // });
    //
    // //변환된 Map형태의 json
    // return albums;
  } else {
    throw Exception('Failed to load album');
  }
}

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  String result = '값 없음';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP'),
      ),
      body: Center(
        child: Text(result),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          List<Album> album = await fetchAlbums();
          setState(() {
            result = album.toString();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
