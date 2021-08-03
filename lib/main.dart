import 'package:flutter/material.dart';

import 'qrview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
            child: Center(
                child: Column(
          children: [
            SizedBox(
              height: 45,
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QRViewExample()));
                },
                child: Text(
                  'Scan',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ))),
      ),
    );
  }
}
