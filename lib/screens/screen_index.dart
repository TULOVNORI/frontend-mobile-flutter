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
        title: Text(
          'TULOVNORI',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text('윷놀이 도구'),
              onPressed: () async {
                await Navigator.pushNamed(context, '/nori', arguments: {
                  "nori_name": "윷놀이 도구",
                  "nori_description":
                      "윷놀이에 필요한 윷을 던져보세요. 전통적인 방식대로 결과에 따라 말판을 이동시키고 즐기세요.",
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
