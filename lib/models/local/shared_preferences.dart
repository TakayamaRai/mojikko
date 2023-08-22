import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  static late SharedPreferences prefs;

  static Future<void> instance() async {
    try{
      prefs = await SharedPreferences.getInstance();
    }catch(e){
      print('instanceSharedPreferenceErr : $e');
    }
  }

  static void setString(String key, String value) {
    prefs.setString(key, value);
  }

  static String getString(String key) {
    return prefs.getString(key) ?? '';
  }

  static void setBool(String key, bool value) {
    prefs.setBool(key, value);
  }

  static bool getBool(String key) {
    return prefs.getBool(key) ?? false;
  }

  static void setDouble(String key, double value) {
    prefs.setDouble(key, value);
  }

  static double? getDouble(String key) {
    return prefs.getDouble(key);
  }
}
