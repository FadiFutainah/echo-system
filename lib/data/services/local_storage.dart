import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  static final LocalStorage _instance = LocalStorage._internal();

  factory LocalStorage() => _instance;

  LocalStorage._internal();

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  String _token = '';

  Future<String> get token async {
    _token = await _secureStorage.read(key: 'token') ?? '';
    return _token;
  }

  Future<void> setToken(String val) async {
    await _secureStorage.write(key: 'token', value: val);
  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: 'token');
  }
}
