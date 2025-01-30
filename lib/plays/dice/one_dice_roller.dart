import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class OneDiceRoller extends StatefulWidget {
  const OneDiceRoller({super.key});

  @override
  State<OneDiceRoller> createState() => _OneDiceRollerState();
}

class _OneDiceRollerState extends State<OneDiceRoller> {
  var diceNum = 1;

  void rollDice() {
    var number = randomizer.nextInt(5) + 1;
    setState(() {
      diceNum = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Image(
              image: AssetImage('images/dice/dice_$diceNum.png'),
              width: 500,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 120),
            decoration: BoxDecoration(
              color: Color(0xFF052546), // 전체 배경색 설정
              borderRadius: BorderRadius.circular(30),
            ),
            child: ElevatedButton(
              child: Text(
                'Roll Dice',
                style: TextStyle(
                  color: Color(0xFF0bdaf9),
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                rollDice();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF052445),
                shadowColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
