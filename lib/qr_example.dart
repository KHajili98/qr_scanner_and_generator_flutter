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
            backgroundColor: Colors.black12,
            eyeStyle: QrEyeStyle(
                color: Colors.black54,
                eyeShape:
                    QrEyeShape.square), //kenardaki boyuk kvadratlarin formasidi
            dataModuleStyle: QrDataModuleStyle(
                //noqtelerin formasidi
                color: Colors.blueGrey,
                dataModuleShape: QrDataModuleShape.square),
            data: "{'salam':'asdadsa'}",
            version: QrVersions.auto,
            size: 300.0,
            padding: EdgeInsets.all(30),
            foregroundColor: Colors.red, // esas oz rengi
            gapless: false, // balaca noqteler arasinda serhed xetler qoyur
            embeddedImage: NetworkImage(
              "https://i.pinimg.com/736x/d6/5e/cc/d65ecc1e6feccc99d7512de99794022b.jpg",
            ),
            embeddedImageStyle: QrEmbeddedImageStyle(
              size: Size(20, 20),
            ),
          ),
        ),
      ),
    );
  }
}
