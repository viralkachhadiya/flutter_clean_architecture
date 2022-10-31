import 'package:layer_first_api/layer_first_api.dart';

/// {@template todos_repository}
/// A repository that handles album related requests.
/// {@endtemplate}
class AlbumRepository {
  /// {@macro todos_repository}
  const AlbumRepository({
    required LayerFirstApiClient apiClient,
  }) : _apiClient = apiClient;

  final LayerFirstApiClient _apiClient;

  /// Provides a [Future] of all albums.
  Future<List<Album>> getPosts() => _apiClient.getAlbums();
}