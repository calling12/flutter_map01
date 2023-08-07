import 'package:shared_preferences/shared_preferences.dart';

class SetPref {
  late SharedPreferences prefs;
  String token = 'token';

  Future<void> setToken(String val) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(token, val);
  }

  Future<String?> getToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString(token);
  }
}
