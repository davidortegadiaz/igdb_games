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
      return _response;
    } catch (e) {
      final DioError error = e as DioError;
      if (error.type != DioErrorType.cancel && error.type != DioErrorType.response) {
        throw (DioError(
          requestOptions: RequestOptions(path: 'https://api.igdb.com/v4/games'),
          type: DioErrorType.connectTimeout,
        ));
      }
      rethrow;
    }
  }
}
