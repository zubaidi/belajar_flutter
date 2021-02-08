import 'package:belajar_flutter/UI/LoginUI.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/UI',
      routes: {'/UI': (context) => LoginUI()},
    );
  }
}
