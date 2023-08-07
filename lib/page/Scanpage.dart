import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScannedDataPage extends StatelessWidget {
  final String data;

  ScannedDataPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scanned Data')),
      body: Center(
        child: Text('Scanned Data: $data'),
      ),
    );
  }
}
