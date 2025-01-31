import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class TwoDiceRoller extends StatefulWidget {
  const TwoDiceRoller({super.key});

  @override
  State<TwoDiceRoller> createState() => _TwoDiceRollerState();
}

class _TwoDiceRollerState extends State<TwoDiceRoller> {
  var diceNum1 = 1;
  var diceNum2 = 1;

  void rollDice() {
    var number1 = randomizer.nextInt(6) + 1;
    var number2 = randomizer.nextInt(6) + 1;
    setState(() {
      diceNum1 = number1;
      diceNum2 = number2;
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
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: screenWidth * 0.45,
                      child: Image(
                        image:
                            AssetImage('assets/images/dice/dice_$diceNum1.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: screenWidth * 0.45,
                      child: Image(
                        image: AssetImage(
                            'assets/images/dice/dice_2$diceNum2.png'),
                      ),
                    ),
                  ),
                ],
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
