import 'package:dio/dio.dart';

class HTTPService {
  final Dio _dio;

  HTTPService({Dio? dio}) : _dio = dio ?? Dio();

  Future<Response> post({String body = ''}) async {
    return _dio.post(
      'https://api.igdb.com/v4/games',
      data: '''fields id,name,rating,rating_count,cover;
            sort rating desc;
            limit 100;''',
    );
  }
}
