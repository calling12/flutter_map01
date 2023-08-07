// import 'dart:convert';

// import 'package:flutter_application_2/Models/user_info.dart';
// import 'package:flutter_application_2/services/Auth.dart';
// import 'package:http/http.dart' as http;

// class APIservice {
//   String urlAIP = 'https://api-charging.onrender.com:3000/users/register';

//   // ignore: non_constant_identifier_names
//   Future<AuthService> Login(String email, String password) async {
//     final http.Response response = await http.post(
//         Uri.parse('${urlAIP.toString()}/login'),
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body:
//             jsonEncode(<String, String>{'email': email, 'password': password}));
//     if (response.statusCode == 200) {
//       return registorModelFromJson(res.body);
//     } else {
//       throw Exception('Failed to login');
//     }
//   }
// }
