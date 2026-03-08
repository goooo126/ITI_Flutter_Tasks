import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final storage = const FlutterSecureStorage();

  Future<void> saveUser(String email, String password) async {
    await storage.write(key: "email", value: email);
    await storage.write(key: "password", value: password);
  }

  Future<String?> getEmail() async {
    return await storage.read(key: "email");
  }

  Future<String?> getPassword() async {
    return await storage.read(key: "password");
  }

  Future<void> logout() async {
    await storage.deleteAll();
  }
}