import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesSingleton {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool({required String key, required bool value}) async {
    await _instance.setBool(key, value);
  }

  static setString({required String key, required String value}) async {
    await _instance.setString(key, value);
  }

  static setStringList(
      {required String key, required List<String> value}) async {
    await _instance.setStringList(key, value);
  }

  static getBool({required String key}) {
    return _instance.getBool(key) ?? false;
  }

  static String getString({required String key}) {
    return _instance.getString(key) ?? '';
  }

  static List<String> getStringList({required String key}) {
    return _instance.getStringList(key) ?? [];
  }

  static Future<bool> remove({required String key}) async {
    return await _instance.remove(key);
  }

  static Future<void> setSecureString(
      {required String key, required String value}) async {
    const flutterSecureStorage = FlutterSecureStorage();
    await flutterSecureStorage.write(key: key, value: value);
  }

  static Future<String> getSecureString({required String key}) async {
    const flutterSecureStorage = FlutterSecureStorage();
    return await flutterSecureStorage.read(key: key) ?? '';
  }

  static deleteSecureString({required String key}) async {
    const flutterSecureStorage = FlutterSecureStorage();
    return await flutterSecureStorage.delete(key: key);
  }
}
