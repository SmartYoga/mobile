import 'package:flutter/material.dart';

import 'package:mobile/pages/chat.dart';
import 'package:mobile/pages/start.dart';
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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedItem = 0;
  var _pages = [
    ProfileScreen(),
    ProfileScreen(),
    RecentChats(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _pages[_seletedItem],
        ),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFF57600),
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.blue[300]),
          selectedLabelStyle: TextStyle(color: Colors.blue[100]),
          selectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: new Image.asset('assets/video.png',
                  width: 30, height: 30, fit: BoxFit.contain),
              label: "Dialogue",
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
                icon: new Image.asset('assets/logo.png',
                    width: 35, height: 35, fit: BoxFit.cover),
                label: "Inspeak"),
            BottomNavigationBarItem(
                icon: new Image.asset('assets/messenger.png',
                    width: 30, height: 30, fit: BoxFit.contain),
                label: "Messenger"),
            BottomNavigationBarItem(
                icon: new Image.asset('assets/user.png',
                    width: 30, height: 30, fit: BoxFit.contain),
                label: "Profile"),
          ],
          currentIndex: _seletedItem,
          onTap: (index) {
            setState(() {
              _seletedItem = index;
            });
          },
        ));
  }
}
