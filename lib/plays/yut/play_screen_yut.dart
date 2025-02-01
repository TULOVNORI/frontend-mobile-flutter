import 'package:flutter/material.dart';
import 'package:tulovnori/plays/yut/yut_roller.dart';

class PlayScreenYut extends StatelessWidget {
  const PlayScreenYut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF152b39),
        leading: Container(),
        actions: [
          IconButton(
            icon: const Icon(Icons.cancel),
            iconSize: 35,
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/yut/background.png'),
        )),
        child: Center(
          child: YutRoller(),
        ),
      ),
    );
  }
}
