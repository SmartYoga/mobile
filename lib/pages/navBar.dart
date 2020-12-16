import 'package:flutter/material.dart';

import 'package:mobile/pages/chat/chat.dart';
import 'package:mobile/pages/profile/start.dart';
import 'package:mobile/pages/workout/workout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      home: MyHomePage(),
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
    WorkoutPage(),
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
          backgroundColor: Color(0xFF96D4EF),
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.white38),
          selectedLabelStyle: TextStyle(color: Colors.blue[100]),
          selectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 35), label: "Профиль"),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_run, size: 35), label: "Занятия"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message, size: 35), label: "Чат"),
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
