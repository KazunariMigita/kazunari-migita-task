import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http; // httpという変数を通して、httpパッケージにアクセス
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:qiita_project/models/article.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // 検索結果を格納する変数
  List<Article> articles = []; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qiita Search'),
      ),
      // ignore: prefer_const_constructors
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //search box
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 36,
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 30
              ),
              decoration: InputDecoration(
                hintText: 'Qiitaの記事を検索',
                hintStyle: TextStyle(
                  fontSize: 20,
                )
              ),

              //Enterで検索発火
              onSubmitted: (String value) async{
                final results = await searchQiita(value);
                setState(() => articles = results);

              },
            ),
          ),

           Expanded(
            child: ListView(
              children: articles
                  .map((article) => ArticleContainer(article: article))
                  .toList(),
            ),
          ),
        ],
      )
    );
  }

  Future<List<Article>> searchQiita(String keyword) async {
  // 1. http通信に必要なデータを準備をする
  final uri = Uri.https('qiita.com', '/api/v2/items',{
    'query' : 'title:$keyword',
    'per_page' : '10',
  });
  final String token = dotenv.env['QIITA_ACCESS_TOKEN'] ?? '';
  // 2. Qiita APIにリクエストを送る
  final http.Response res = await http.get(uri, headers: {
    'Authorization' : 'Bearer $token' ,
  });
  // 3. 戻り値をArticleクラスの配列に変換
  // 4. 変換したArticleクラスの配列を返す(returnする)
  if (res.statusCode == 200) {
    final List<dynamic> body = jsonDecode(res.body);
    return body.map((dynamic json) => Article.fromJson(json)).toList();
  }else {
    return [];
  }

  
}

  
}