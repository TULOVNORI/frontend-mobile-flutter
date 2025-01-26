import 'package:flutter/material.dart';

class ScreenIndex extends StatefulWidget {
  const ScreenIndex({super.key});

  @override
  State<ScreenIndex> createState() => _ScreenIndexState();
}

class _ScreenIndexState extends State<ScreenIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text('NORI'),
              onPressed: () async {
                await Navigator.pushNamed(context, '/nori');
              },
            ),
          )
        ],
      ),
    );
  }
}
