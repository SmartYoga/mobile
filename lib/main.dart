import 'package:flutter/material.dart';
import 'package:mobile/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartYoga App',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
