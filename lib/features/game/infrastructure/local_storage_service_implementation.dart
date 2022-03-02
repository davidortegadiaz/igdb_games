import 'package:igdb_games/features/game/domain/repositories/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageServiceImplementation implements LocalStorageService {
  @override
  Future<String?> getData() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('data');
  }

  @override
  Future<void> saveData(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('data', data);
  }
}
