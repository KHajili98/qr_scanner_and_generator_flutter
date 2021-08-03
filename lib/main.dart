import 'package:flutter/material.dart';

import 'qrview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
          child: Center(
              child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 45,
            width: 120,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ccontext1) => QRViewExample()));
              },
              child: Text(
                'Scan',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ))),
    );
  }
}
