class UpperBodyWorkout {
  final String imagePath, name, instruction;

  UpperBodyWorkout({this.imagePath, this.name, this.instruction});
}

final upperBody = [
  [
    UpperBodyWorkout(
      imagePath: "assets/chest.png",
      name: "Жим",
      instruction: "3 сета - 6 повторения",
    ),
    UpperBodyWorkout(
      imagePath: "assets/chest.png",
      name: "Гантели",
      instruction: "4 сета1 - 6 повторения",
    ),
    UpperBodyWorkout(
      imagePath: "assets/chest.png",
      name: "Отжимания",
      instruction: "2 сета - 10 повторения",
    ),
  ],
  [
    UpperBodyWorkout(
      imagePath: "assets/back.png",
      name: "Подтягивания",
      instruction: "2 сета - 8 повторения",
    ),
    UpperBodyWorkout(
      imagePath: "assets/back.png",
      name: "Тяга",
      instruction: "2 сета - 4 повторения",
    ),
    UpperBodyWorkout(
      imagePath: "assets/back.png",
      name: "Тяга верхнего блока",
      instruction: "4 сета - 6 повторения",
    ),
  ],
  [
    UpperBodyWorkout(
      imagePath: "assets/chest.png",
      name: "Жим лёжа",
      instruction: "3 сета - 6 повторения",
    ),
    UpperBodyWorkout(
      imagePath: "assets/chest.png",
      name: "Пресс",
      instruction: "4 сета - 6 повторения",
    ),
    UpperBodyWorkout(
      imagePath: "assets/chest.png",
      name: "Отжимания",
      instruction: "2 сета - 10 повторения",
    ),
  ],
  [
    UpperBodyWorkout(
      imagePath: "assets/back.png",
      name: "Прыжки",
      instruction: "2 сета - 8 повторения",
    ),
    UpperBodyWorkout(
      imagePath: "assets/back.png",
      name: "Тяга",
      instruction: "2 сета - 4 повторения",
    ),
    UpperBodyWorkout(
      imagePath: "assets/back.png",
      name: "Пресс",
      instruction: "4 сета - 6 повторения",
    ),
  ],
];
