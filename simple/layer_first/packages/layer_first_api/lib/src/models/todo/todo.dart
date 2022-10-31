import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable()
class Todo{
  const Todo({required this.userId, required this.id, required this.title, required this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) =>
      _$TodoFromJson(json);

  final int userId;
  final int id;
  final String title;
  final bool completed;
}