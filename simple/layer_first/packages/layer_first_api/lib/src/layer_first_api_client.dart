import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:layer_first_api/layer_first_api.dart';

/// {@template layer_first_api_client}
/// Dart API Client which wraps the [Dummy API](https://jsonplaceholder.typicode.com).
/// {@endtemplate}
class LayerFirstApiClient {
  /// {@macro layer_first_api_client}
  LayerFirstApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'jsonplaceholder.typicode.com';

  final http.Client _httpClient;

  /// Fetches [Post] `/posts`.
  Future<List<Post>> getPosts() async {
    final postRequest = Uri.https(_baseUrl, 'posts');

    final postResponse = await _httpClient.get(postRequest);

    return (jsonDecode(postResponse.body) as List)
        .map((e) => Post.fromJson(e))
        .toList();
  }

  /// Fetches [Album] `/albums`.
  Future<List<Album>> getAlbums() async {
    final albumRequest = Uri.https(_baseUrl, 'albums');

    final albumResponse = await _httpClient.get(albumRequest);

    return (jsonDecode(albumResponse.body) as List)
        .map((e) => Album.fromJson(e))
        .toList();
  }

  /// Fetches [Todo] `/todos`.
  Future<List<Todo>> getTodos() async {
    final todoRequest = Uri.https(_baseUrl, 'todos');

    final todoResponse = await _httpClient.get(todoRequest);

    return (jsonDecode(todoResponse.body) as List)
        .map((e) => Todo.fromJson(e))
        .toList();
  }
}
