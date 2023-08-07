import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> forgotPassword(String email) async {
  final apiUrl = 'https://api-charging.onrender.com/users/forgotpassword';

  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: {'email': email},
    );

    if (response.statusCode == 200) {
      print('finice');
    } else {
      // Password reset request failed.
      // You can handle the error here, such as displaying an error message.
    }
  } catch (e) {
    // Error occurred during the API call.
    // You can handle the exception here.
  }
}
