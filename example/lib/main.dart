///
///
///
import 'package:flutter/material.dart';
import 'package:flutter_web_app/flutter_web_app.dart';

void main() {
  runApp(MyApp());
}

///
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Flutter Web App Demo',
        home: WebApp(
          url: 'https://beepstart.app',
          statusBarColor: Colors.deepOrange,
        ),
      );
}
