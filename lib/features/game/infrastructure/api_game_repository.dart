import 'package:dio/dio.dart';
import 'package:igdb_games/features/game/domain/repositories/game_repository.dart';
import 'package:igdb_games/features/http/http_service.dart';

class ApiGameRepository implements GameRepository {
  final HTTPService httpService;

  ApiGameRepository({required this.httpService});
  @override
  Future<Response> fetchGames() async {
    try {
      final Response _response = await httpService.post();
      if (_response.statusCode != 200) {
        throw Exception;
      }
      return _response;
    } catch (e) {
      rethrow;
    }
  }
}
