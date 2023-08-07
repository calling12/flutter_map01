import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class QRCodeWidget extends StatefulWidget {
  const QRCodeWidget({super.key});

  @override
  State<QRCodeWidget> createState() => _QRCodeWidgetState();
}

class _QRCodeWidgetState extends State<QRCodeWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String result = '';

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData.code!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5ac18e).withOpacity(0.3),
        title: Text('QR Scan'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
                // child: Text(
                //   'Scan Result: $result',
                //   style: TextStyle(fontSize: 18),
                // ),
                ),
          ),
          SizedBox(height: 20),
          Expanded(
            flex: 5,
            child: Container(
              width: 300,
              height: 30,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      if (result.isNotEmpty) {
                        final Uri _url = Uri.parse(result);
                        await launchUrl(_url);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff5ac18e),
                      elevation: 5,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text('Open'),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
