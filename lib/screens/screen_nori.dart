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
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(args["backgroundColor"] as int),
          title: Text(
            '${args["name"]}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 34,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(args["backgroundColor"] as int), Colors.black],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Image(
                  image: ResizeImage(
                    AssetImage('assets/images/${args["nori"]}/main.png'),
                    width: (screenWidth * 0.8).toInt(),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    '${args["description"]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(bottom: 90),
                  width: screenWidth * 0.7,
                  child: ElevatedButton(
                    child: Text(
                      'PLAY',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                    onPressed: () async {
                      await Navigator.pushNamed(context, '/${args["nori"]}');
                    },
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialColor(primary, swatch),
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
