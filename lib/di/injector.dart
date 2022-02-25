import 'package:get/get.dart';
import 'package:igdb_games/services/http_service.dart';

void injection() {
  Get.put<HTTPService>(HTTPService());
}
