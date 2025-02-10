import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:tulovnori/widgets/card_widget.dart';

class ScreenIndex extends StatefulWidget {
  const ScreenIndex({super.key});

  @override
  State<ScreenIndex> createState() => _ScreenIndexState();
}

class _ScreenIndexState extends State<ScreenIndex> {
  late List<dynamic> noriData = [];
  late Map<String, dynamic> noriStyle = {};

  @override
  void initState() {
    super.initState();
    loadNoriData();
  }

  Future<void> loadNoriData() async {
    String noriJson = await rootBundle.loadString('assets/en.json');
    String noriStyleJson = await rootBundle.loadString('assets/styles.json');
    Map<String, dynamic> styleJsonMap = jsonDecode(noriStyleJson);

    setState(() {
      noriData = jsonDecode(noriJson)['noris'];
      noriStyle = styleJsonMap;
      print(noriStyle.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'TULOVN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Color(0xFFf6f4f0), // 흰색 글자
                ),
              ),
              TextSpan(
                text: 'ORI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Color(0xFFffd643), // 빨간색 글자
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFf6f4f0),
        ),
        child: Center(
          child: Container(
            width: screenWidth * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                noriData.isEmpty
                    ? CircularProgressIndicator()
                    : Expanded(
                        child: ListView.builder(
                            itemCount: noriData.length,
                            itemBuilder: (context, index) {
                              var card = noriData[index];
                              var nori = card['nori'];
                              return CardWidget(
                                nori: nori,
                                title: card['title'],
                                description: card['description'],
                                imagePath:
                                    'assets/images/${card["nori"]}/main.png',
                                buttonText: card['buttonText'],
                                backgroundColor:
                                    int.parse(noriStyle[nori]['cardColor']),
                              );
                            }),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
