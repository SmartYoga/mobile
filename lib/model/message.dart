import 'package:mobile/model/user.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;

  Message({
    this.sender,
    this.time,
    this.text,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Катя',
  imageUrl: 'assets/pelevin.jpg',
);

// USERS
final User id1 = User(
  id: 1,
  name: 'Петя',
  imageUrl: '',
);
final User id2 = User(
  id: 2,
  name: 'Коля',
  imageUrl: '',
);
final User id3 = User(
  id: 3,
  name: 'Андрей',
  imageUrl: '',
);
final User id4 = User(
  id: 4,
  name: 'Лера',
  imageUrl: '',
);
final User id5 = User(
  id: 5,
  name: 'Катя',
  imageUrl: '',
);
final User id6 = User(
  id: 6,
  name: 'Вадим Сергееич',
  imageUrl: '',
);
final User id7 = User(
  id: 7,
  name: 'Steven',
  imageUrl: '',
);

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: id1,
    time: '5:30 PM',
    text: 'Ух, устала сегодня',
  ),
  Message(
    sender: id2,
    time: '4:30 PM',
    text: 'Жду завтра в 13:00',
  ),
  Message(
    sender: id3,
    time: '3:30 PM',
    text: 'Большое спасибо',
  ),
  Message(
    sender: id4,
    time: '2:30 PM',
    text: 'Блеск. Жду тебя завтра)',
  ),
  Message(
    sender: id5,
    time: '1:30 PM',
    text: 'Ура, я в интернете',
  ),
  Message(
    sender: id6,
    time: '12:30 PM',
    text: 'Мда',
  ),
  Message(
    sender: id7,
    time: '11:30 AM',
    text: 'Я сообщение',
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: id1,
    time: '5:30 PM',
    text: 'Блеск. Жду тебя завтра)',
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'А у тебя как?',
  ),
  Message(
    sender: currentUser,
    time: '3:45 PM',
    text: 'Просто отлично, жду следующего занатия))',
  ),
  Message(
    sender: id1,
    time: '3:15 PM',
    text: 'Как прошла тренеровка?',
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Привет',
  ),
  Message(
    sender: id1,
    time: '2:00 PM',
    text: 'Привет!',
  ),
];
