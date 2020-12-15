import 'package:flutter/material.dart';
import 'package:mobile/model/message.dart';
import 'package:mobile/pages/chat/chatScreen.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF96D4EF),
      appBar: AppBar(
        leading: new Container(),
        backgroundColor: Color(0xFF96D4EF),
        title: Text(
          'Сообщения',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: ClipRRect(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: chat.sender,
                      ),
                    ),
                  ),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Color(0xFF777777),
                              radius: 25.0,
                              backgroundImage: AssetImage(chat.sender.imageUrl),
                            ),
                            SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  chat.sender.name,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    chat.text,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              chat.time,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
