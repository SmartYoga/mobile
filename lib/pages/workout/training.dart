import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/client.dart';
import 'package:mobile/pages/profile/meal_detail_screen.dart';
import 'package:mobile/pages/workout/coaching.dart';
import 'package:mobile/model/meal.dart';

class WorkoutPage extends StatelessWidget {
  final Meal meal;

  const WorkoutPage({Key key, this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF96D4EF),
      appBar: AppBar(
        leading: new Container(),
        backgroundColor: Color(0xFF96D4EF),
        title: Text(
          'Ваши тренеровки',
          style: TextStyle(
            fontSize: 20,
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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child:

            /// Карточки
            Column(
          children: [
            SizedBox(height: 30),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 32,
                    ),
                    for (int i = 0; i < client.getMeal().length; i++)
                      _MealCard(
                        meal: client.getMeal()[i],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      /// Конопка записи на занятие
      floatingActionButton: OpenContainer(
        closedElevation: 0,
        transitionType: ContainerTransitionType.fade,
        transitionDuration: const Duration(milliseconds: 1000),
        closedColor: const Color(0xFFE9E9E9),
        openBuilder: (context, _) {
          return WorkoutPage();
        },
        closedBuilder: (context, VoidCallback openContainer) {
          return GestureDetector(
            onTap: openContainer,
            child: Container(
              child: FloatingActionButton.extended(
                onPressed: null,
                label: Text('Фильтры',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                backgroundColor: Color(0xFFA4F2C1),
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key key, @required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: OpenContainer(
                closedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                transitionDuration: const Duration(milliseconds: 1000),
                openBuilder: (context, _) {
                  return MealDetailScreen(
                    meal: meal,
                  );
                },
                closedBuilder: (context, openContainer) {
                  return GestureDetector(
                    onTap: openContainer,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        meal.imagePath,
                        width: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      meal.mealTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Text(
                      meal.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "${meal.coach} тренер",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          size: 15,
                          color: Colors.black12,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "${meal.timeTaken} min",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
