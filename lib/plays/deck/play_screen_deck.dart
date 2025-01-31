import 'package:flutter/material.dart';
import 'package:tulovnori/plays/deck/one_card_drawer.dart';

class PlayScreenDeck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF1f6b01),
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
        color: Color(0xFF1f6b01),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/deck/background.png'),
          )),
          child: Center(
            child: Column(children: [
              OneCardDrawer(),
            ]),
          ),
        ),
      ),
    );
  }
}
