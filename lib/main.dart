// import 'package:App/Navbar.dart';
import 'package:App/Navbar.dart';
import 'package:flutter/material.dart';

import 'page/sign in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EV mobile app',
      home: Login(),
      // home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
