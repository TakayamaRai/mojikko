import 'package:shared_preferences/shared_preferences.dart';

class SPKeys {
  static const String childAnswer = 'childAnswer';
  static const String generalAnswer = 'generalAnswer';
}

class SharedPreferencesUtil {
  static late SharedPreferences prefs;

  static Future<void> instance() async {
    try{
      prefs = await SharedPreferences.getInstance();
    }catch(e){
      print('instanceSharedPreferenceErr : $e');
    }
  }

  static void setInt(String key, int value) {
    prefs.setInt(key, value);
  }

  static int getInt(String key) {
    return prefs.getInt(key) ?? 0;
  }

  static void setBool(String key, bool value) {
    prefs.setBool(key, value);
  }

  static bool getBool(String key) {
    return prefs.getBool(key) ?? false;
  }
}
