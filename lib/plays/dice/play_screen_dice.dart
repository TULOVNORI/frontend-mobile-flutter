import 'package:flutter/material.dart';
import 'package:tulovnori/plays/dice/one_dice_roller.dart';

class PlayScreenDice extends StatefulWidget {
  const PlayScreenDice({super.key});

  @override
  State<PlayScreenDice> createState() => _PlayScreenDiceState();
}

class _PlayScreenDiceState extends State<PlayScreenDice> {
  List<bool> isSelected = [true, false];
  int diceNumber = 1;

  Widget getDiceRoller() {
    return OneDiceRoller();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF093c73),
          leading: Container(),
          actions: [
            IconButton(
              icon: const Icon(Icons.cancel),
              iconSize: 35,
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
      body: Container(
        decoration: const BoxDecoration(
            color: Color(0xFF54e08c),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/dice/background.png'),
            )),
        child: Column(
          children: [
            Container(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300, // 전체 배경색 설정
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ToggleButtons(
                    isSelected: isSelected,
                    onPressed: (int selectedNum) {
                      setState(() {
                        for (int i = 0; i < isSelected.length; i++) {
                          isSelected[i] = i == selectedNum;
                        }
                        diceNumber = selectedNum;
                      });
                    },
                    borderRadius: BorderRadius.circular(15),
                    fillColor: Color(0xFF367dc7),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(" 🎲 "),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("🎲🎲"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            getDiceRoller()
          ],
        ),
      ),
    );
  }
}
