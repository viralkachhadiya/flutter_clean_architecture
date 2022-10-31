import 'package:layer_first_api/layer_first_api.dart';

/// {@template todos_repository}
/// A repository that handles todo related requests.
/// {@endtemplate}
class TodoRepository {
  /// {@macro todos_repository}
  const TodoRepository({
    required LayerFirstApiClient apiClient,
  }) : _apiClient = apiClient;

  final LayerFirstApiClient _apiClient;

  /// Provides a [Future] of all todos.
  Future<List<Todo>> getTodos() => _apiClient.getTodos();
}