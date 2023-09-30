import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences ? sharedPreferences;

  static Future<SharedPreferences> sharedDefinition() async {
    sharedPreferences =  await SharedPreferences.getInstance();
    return Future.value(sharedPreferences) ;
  }

  static putData(String key, dynamic value) async {
    if (value is bool) {
      await sharedPreferences!.setBool(key, value);
    }

    if (value is String) {
      sharedPreferences!.setString(key, value);
    }

    if (value is int) {
      sharedPreferences!.setInt(key, value);
    }

    if (value is double) {
      sharedPreferences!.setDouble(key, value);
    }
  }

  static getData(String key) {
    return sharedPreferences?.get(key);
  }

  static removeData(String key) {
    return sharedPreferences!.remove(key);
  }
}
