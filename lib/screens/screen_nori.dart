import 'package:flutter/material.dart';

class ScreenNori extends StatefulWidget {
  const ScreenNori({super.key});

  @override
  State<ScreenNori> createState() => _NoriState();
}

class _NoriState extends State<ScreenNori> {
  @override
  Widget build(BuildContext context) {
    Map<String, Object> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;

    return Scaffold(
        appBar: AppBar(
          title: Text('${args["nori_name"]}'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('${args["nori_name"]}'),
            ),
            Text('${args["nori_description"]}'),
            ElevatedButton(child: Text('PLAY'), onPressed: () async {})
          ],
        ));
  }
}
