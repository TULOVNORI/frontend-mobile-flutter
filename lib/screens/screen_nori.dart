import 'package:flutter/material.dart';

class ScreenNori extends StatefulWidget {
  const ScreenNori({super.key});

  @override
  State<ScreenNori> createState() => _NoriState();
}

class _NoriState extends State<ScreenNori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NORI'),
      ),
    );
  }
}
