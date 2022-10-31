import 'package:layer_first_api/layer_first_api.dart';

/// {@template todos_repository}
/// A repository that handles post related requests.
/// {@endtemplate}
class PostRepository {
  /// {@macro todos_repository}
  const PostRepository({
    required LayerFirstApiClient apiClient,
  }) : _apiClient = apiClient;

  final LayerFirstApiClient _apiClient;

  /// Provides a [Future] of all posts.
  Future<List<Post>> getPosts() => _apiClient.getPosts();
}