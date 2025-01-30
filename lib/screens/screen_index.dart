import 'package:flutter/material.dart';

class ScreenIndex extends StatefulWidget {
  const ScreenIndex({super.key});

  @override
  State<ScreenIndex> createState() => _ScreenIndexState();
}

class _ScreenIndexState extends State<ScreenIndex> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        title: Text(
          'TULOVNORI',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF222222),
        ),
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF00709b),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: screenWidth * 0.9,
                    height: 180,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image(
                              image: ResizeImage(
                                AssetImage('images/yut/main.png'),
                                width: (screenWidth * 0.9 * 0.5).toInt(),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'YUT NORI',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: ElevatedButton(
                                    child: Text('윷놀이 도구'),
                                    onPressed: () async {
                                      await Navigator.pushNamed(
                                          context, '/nori',
                                          arguments: {
                                            "key": "yut",
                                            "name": "YUT-NORI",
                                            "description":
                                                "Yutnori is a traditional Korean game where you throw four sticks to move your pieces on the board. Use this app to simulate the throws and play Yutnori anytime!",
                                          });
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF7a4b78),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: screenWidth * 0.9,
                    height: 180,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image(
                              image: ResizeImage(
                                AssetImage('images/dice/main.png'),
                                width: (screenWidth * 0.9 * 0.5).toInt(),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'ROLL DICE',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: ElevatedButton(
                                    child: Text('주사위 던지기'),
                                    onPressed: () async {
                                      await Navigator.pushNamed(
                                          context, '/nori',
                                          arguments: {
                                            "key": "dice",
                                            "name": "ROLL DICE",
                                            "description":
                                                "Rolling the dice is a common action in board games to determine the outcome of your move. Use this app to roll the dice virtually and enjoy your favorite board games anytime!",
                                          });
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF367743),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: screenWidth * 0.9,
                    height: 180,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image(
                              image: ResizeImage(
                                AssetImage('images/deck/main.png'),
                                width: (screenWidth * 0.9 * 0.5).toInt(),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'DRAW CARD',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: ElevatedButton(
                                    child: Text('카드 뽑기'),
                                    onPressed: () async {
                                      await Navigator.pushNamed(
                                          context, '/nori',
                                          arguments: {
                                            "key": "deck",
                                            "name": "DRAW CARD",
                                            "description":
                                                "Drawing a card from the deck is a key action in many card games. Use this app to simulate drawing cards and enjoy your favorite card games anytime!",
                                          });
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
