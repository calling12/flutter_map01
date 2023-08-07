import 'dart:convert';

import 'package:App/Models/user_info_registor.dart';
import 'package:App/page/sign%20in.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<void> register(
      String name, String email, String password, context) async {
    String url = "https://api-charging.onrender.com/users/register";
    final Map<String, String> body = {
      "name": name,
      "email": email,
      "password": password,
    };
    final response = await http.post(Uri.parse(url), body: body);

    if (response.statusCode == 201) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('error occurred during registration.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );
    }
  }
}
