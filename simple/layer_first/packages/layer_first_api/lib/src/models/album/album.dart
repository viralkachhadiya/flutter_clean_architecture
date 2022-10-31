import 'package:json_annotation/json_annotation.dart';

part 'album.g.dart';

@JsonSerializable()
class Album{
  const Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) =>
      _$AlbumFromJson(json);

  final int userId;
  final int id;
  final String title;
}