import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String nori;
  final String title;
  final String description;
  final int backgroundColor;
  final String imagePath;
  final String buttonText;

  const CardWidget({
    Key? key,
    required this.nori,
    required this.title,
    required this.description,
    required this.backgroundColor,
    required this.imagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(backgroundColor),
          borderRadius: BorderRadius.circular(15),
        ),
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
                    AssetImage(imagePath),
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
                      title,
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
                        child: Text(buttonText),
                        onPressed: () async {
                          await Navigator.pushNamed(context, '/nori',
                              arguments: {
                                "nori": nori,
                                "name": title,
                                "description": description,
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
    );
  }
}
