import 'package:flutter/material.dart';
import 'question_cards.dart';

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD63447),
        title: Text('Dungeons & Dragons 5e Assistant'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/wallpaper.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x99F57B51),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  margin: const EdgeInsets.all(15.0),
                  child: Text(
                    'Are you a Dungeon Master or an Adventurer?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    QuestionCard(
                      playerTitle: 'Dungeon Master',
                      screenTitle: '/dm',
                    ),
                    QuestionCard(
                      playerTitle: 'Adventurer',
                      screenTitle: '/adv',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
