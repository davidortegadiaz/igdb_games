import 'package:get/get.dart';
import 'package:igdb_games/features/game/domain/bloc/game_bloc.dart';
import 'package:igdb_games/features/game/domain/repositories/game_repository.dart';
import 'package:igdb_games/features/game/infrastructure/api_game_repository.dart';
import 'package:igdb_games/features/http/http_service.dart';

void injection() {
  Get.put<HTTPService>(HTTPService());
  Get.lazyPut<GameRepository>(() => ApiGameRepository(httpService: Get.find<HTTPService>()));
  Get.lazyPut<GameBloc>(() => GameBloc(gameRepository: Get.find<GameRepository>()));
}
