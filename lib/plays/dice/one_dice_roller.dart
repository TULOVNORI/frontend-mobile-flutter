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
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double appBarHeight = AppBar().preferredSize.height;
    double toggleButtonHeight = 110.0;
    double availableHeight =
        screenHeight - appBarHeight - toggleButtonHeight - statusBarHeight;

    return Container(
      height: availableHeight,
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            flex: 404,
            child: Container(
              alignment: Alignment.center,
              width: screenWidth * 0.5,
              child: Image(
                image: AssetImage('assets/images/dice/dice_$diceNum.png'),
              ),
            ),
          ),
          Expanded(
            flex: 100,
            child: Container(
              alignment: Alignment.center,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  rollDice();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF052445),
                  shadowColor: Colors.white,
                ),
                child: Text(
                  'Roll Dice',
                  style: TextStyle(
                    color: Color(0xFF0bdaf9),
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
