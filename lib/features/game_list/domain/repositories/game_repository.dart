import 'package:dio/dio.dart';

abstract class GameRepository {
  Future<Response> fetchGames();
}
