abstract class LocalStorageService {
  Future<String?> getData();
  Future<void> saveData(String data);
}
