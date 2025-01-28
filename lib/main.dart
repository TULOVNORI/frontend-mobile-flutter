import 'package:flutter/material.dart';
import 'package:tulovnori/screens/screen_index.dart';
import 'package:tulovnori/screens/screen_nori.dart';
import 'package:tulovnori/plays/yut/play_screen_yut.dart';

void main() {
  runApp(TulovnoriApp());
}

class TulovnoriApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TULOVNORI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/index',
      routes: {
        '/index': (context) => ScreenIndex(),
        '/nori': (context) => ScreenNori(),
        '/yut': (context) => PlayScreenYut()
      },
    );
  }
}
