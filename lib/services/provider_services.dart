import 'package:flutter/material.dart';

import '../Models/user_info_registor.dart';
import 'Auth_registor.dart';

class Providerservice extends ChangeNotifier {
  String respknseMsg = '';

  Future<bool> register(String name, String email, String password) async {
    // RegistorModel resp = await AuthService().register(name, email, password);
    // if (resp.role == 'succses') {
    return true;
    // } else {
    // respknseMsg = resp..toString();
    // notifyListeners();
    return false;
  }
}
// }
