import 'package:flutter/material.dart';
import 'package:mobile/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartYoga App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //#96d4ef
          // primarySwatch: Colors.blue,
          ),
      home: LoginPage(),
    );
  }
}
