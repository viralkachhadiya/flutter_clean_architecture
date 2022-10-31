import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post{
  const Post({required this.userId, required this.id, required this.body, required this.title});

  factory Post.fromJson(Map<String, dynamic> json) =>
      _$PostFromJson(json);

  final int userId;
  final int id;
  final String title;
  final String body;
}