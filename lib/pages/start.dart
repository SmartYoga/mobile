import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF96D4EF), Color(0xFFA4F2C1)]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Фамилия Имя ЫЫЫЫЫ',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.1,
                      //backgroundImage: AssetImage('assets/logo.png'),
                      backgroundImage: NetworkImage(
                          'https://memepedia.ru/wp-content/uploads/2020/10/polskaja-korova-mem.png'),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
                new Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  height: 100,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: new List.generate(10, (int index) {
                      return new Container(
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 20.0,
                                offset: Offset(0, 3))
                          ],
                        ),
                        width: 200.0,
                        child: Center(
                          child: Text(
                            'Тренеровки',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Text('Че'),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF96D4EF), Color(0xFFA4F2C1)]),
            ),
            child: Text(
                'Тут будут всякие полезные штуки, типа раздел здоровья, календари, тренера и тд. Я спать'),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF96D4EF), Color(0xFFA4F2C1)]),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF96D4EF), Color(0xFFA4F2C1)]),
            ),
          ),
        ],
      ),
    ));
  }
}
