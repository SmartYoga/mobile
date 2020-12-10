import 'package:flutter/material.dart';
import 'package:mobile/pages/navBar.dart';
import 'package:mobile/pages/start.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF96D4EF), Color(0xFFA4F2C1)]),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      // Под логотип
                      ),
                  Text(
                    'Smart Yoga',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Контейнер текстого поля логина и пароля
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          // Тень отбрасываемая полем
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 20.0,
                              offset: Offset(0, 3))
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.white))),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Логин",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Пароль",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // Кнопка Войти
                  Container(
                    alignment: Alignment.center,
                    child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 110),
                        color: Colors.white,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        child: Text("Войти")),
                  ),
                  SizedBox(height: 10),
                  // Кнопка регистрации
                  Container(
                    alignment: Alignment.center,
                    child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 90),
                        color: Colors.white,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: () {
                          /* */
                        },
                        child: Text("Регистрация")),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
