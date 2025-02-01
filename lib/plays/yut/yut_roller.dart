import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class YutRoller extends StatefulWidget {
  const YutRoller({super.key});

  @override
  State<YutRoller> createState() {
    return _YutRollerState();
  }
}

class _YutRollerState extends State<YutRoller> {
  var currentYutRoll = 0;
  var totalYutRoll = 0;
  var yutList = [0, 0, 0, 0];

  void rollYut() {
    setState(() {
      for (var i = 0; i < 4; i++) {
        if (totalYutRoll < 4) {
          currentYutRoll = randomizer.nextInt(3);
          yutList[i] = currentYutRoll;
          totalYutRoll +=
              currentYutRoll == 2 ? currentYutRoll * 2 : currentYutRoll;
        } else {
          currentYutRoll = randomizer.nextInt(2);
          yutList[i] = currentYutRoll;
          totalYutRoll += currentYutRoll;
        }
      }
    });
  }

  @override
  Widget build(context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight,
            //         colors: [Color(0xFFe0a74d), Color(0xFFba8e00)])),
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/yut/yut_${yutList[0]}.png',
                    width: 60,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/yut/yut_${yutList[1]}.png',
                    width: 60,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/yut/yut_${yutList[2]}.png',
                    width: 60,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/yut/yut_${yutList[3]}.png',
                    width: 60,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(
            onPressed: rollYut,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xffa04800)),
            ),
            child: const Text(
              "YUT IYO",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffffe0c1),
                fontSize: 45,
              ),
            ),
          )
        ],
      ),
    );
  }
}
