import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putData(String key, bool value) async {
    return await sharedPreferences!.setBool(key, value);
  }

  static getdata(String key) {
    return sharedPreferences!.get(key);
  }
}
