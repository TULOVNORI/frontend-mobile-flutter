import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
final List<String> SHAPES = ['clubs', 'diamonds', 'hearts', 'spades'];
final String JOCKER = 'jocker';

class OneCardDrawer extends StatefulWidget {
  const OneCardDrawer({super.key});

  @override
  State<OneCardDrawer> createState() => _OneCardDrawerState();
}

class _OneCardDrawerState extends State<OneCardDrawer> {
  var number = 0;
  var shape = 'back';

  void drawCard() {
    number = (randomizer.nextInt(52) / 4).toInt();
    setState(() {
      if (number == 0) {
        shape = JOCKER;
      } else {
        int shapeNumber = randomizer.nextInt(3);
        shape = SHAPES[shapeNumber];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            margin: EdgeInsets.only(top: 25),
            width: constraints.maxWidth * 0.7,
            height: constraints.maxWidth * 0.7 * 1.4,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFe0ce01),
                width: 10,
              ),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Image.asset('images/deck/${number}_of_${shape}.png'),
            ),
          );
        }),
        Container(
          child: GestureDetector(
            onVerticalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                drawCard();
              }
            },
            child: Container(
                height: 300,
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  '↑ Draw Card ↑',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        )
      ],
    );
  }
}
