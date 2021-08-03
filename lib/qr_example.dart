import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeExamplePage extends StatelessWidget {
  const QrCodeExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: QrImage(
            backgroundColor: Colors.redAccent,
            eyeStyle:
                QrEyeStyle(color: Colors.black54, eyeShape: QrEyeShape.square),
            data: "{'salam':'asdadsa'}",
            version: QrVersions.auto,
            size: 200.0,
          ),
        ),
      ),
    );
  }
}
