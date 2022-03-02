import 'package:get/get.dart';
import 'package:igdb_games/features/game/domain/bloc/game_bloc.dart';
import 'package:igdb_games/features/game/domain/repositories/game_repository.dart';
import 'package:igdb_games/features/game/domain/repositories/local_storage_service.dart';
import 'package:igdb_games/features/game/infrastructure/api_game_repository.dart';
import 'package:igdb_games/features/game/infrastructure/local_storage_service_implementation.dart';
import 'package:igdb_games/features/http/http_service.dart';

void injection() {
  Get.put<HTTPService>(HTTPService());
  Get.lazyPut<GameRepository>(() => ApiGameRepository(httpService: Get.find<HTTPService>()), fenix: true);
  Get.lazyPut<GameBloc>(
    () => GameBloc(gameRepository: Get.find<GameRepository>(), localStorageService: Get.find<LocalStorageService>()),
    fenix: true,
  );
  Get.lazyPut<LocalStorageService>(() => LocalStorageServiceImplementation(), fenix: true);
}
