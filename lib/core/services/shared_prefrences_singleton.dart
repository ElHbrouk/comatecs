import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesSingleton {
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

  static getBool({required String key}) async {
    return _instance.getBool(key) ?? false;
  }

  static String getString({required String key}) {
    return _instance.getString(key) ?? '';
  }

  static removeString({required String key}) async {
    return await _instance.remove(key);
  }
}
