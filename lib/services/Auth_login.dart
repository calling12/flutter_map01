import 'dart:convert';

import 'package:App/Models/user_info_login.dart';
import 'package:App/Navbar.dart';
import 'package:App/page/Map.dart';
import 'package:App/utity/pefre.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class AuthServiceLog {
  Future<Login?> login(String email, String password, context) async {
    try {
      String url = "https://api-charging.onrender.com/users/login";
      Map<String, String> body = {
        "email": email,
        "password": password,
      };
      var res = await http.post(Uri.parse(url), body: body);
      if (res.statusCode == 200) {
        Map<String, dynamic> mapData = jsonDecode(res.body);
        Login data = Login.fromJson(mapData);
        SetPref().setToken(data.accessToken);
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => NavBar()), (route) => false);
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                "Please enter email and password",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Color(0xFF5AC18E),
              contentTextStyle: TextStyle(
                color: Colors.white,
              ),
            );
          },
        );
      }
    } catch (e) {
      print('Error: $e');
    }
    return null;
  }
}
