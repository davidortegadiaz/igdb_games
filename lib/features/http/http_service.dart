import 'package:dio/dio.dart';

class HTTPService {
  final Dio _dio;

  HTTPService({Dio? dio})
      : _dio = dio ??
            Dio(BaseOptions(
              headers: {
                'Client-ID': 'ikefu3gjaojsnnt21ik7orxyofnztq',
                'Authorization': 'Bearer 2uw3txw594lth0cxmlo2zpqlq1gdhv',
              },
            ));

  Future<Response> post({String body = ''}) async {
    return _dio.post(
      'https://api.igdb.com/v4/games',
      data: '''fields id,name,rating,rating_count,artworks.url,genres.name,storyline,videos.video_id,artworks.image_id;
            where artworks != null & rating != null & rating_count != null & genres != null & storyline != null & videos != null;
            limit 100;''',
    );
  }
}
