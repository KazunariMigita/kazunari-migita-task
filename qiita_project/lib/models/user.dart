// import 'package:http/http.dart' as http;

class User{

  User({
    //constructor
    // requiredはパラメータが必須であると示すためのアノテーション
    required this.id,
    required this.profileImageUrl,
  });
  // プロパティ
  final String id;
  final String profileImageUrl;



  // JsonからUserを生成するファクトリコンストラクタ
  factory User.fromJson(dynamic json) {
    return User(
      id: json['id'] as String,
      profileImageUrl: json['url'] as String,
    );
  }
}

