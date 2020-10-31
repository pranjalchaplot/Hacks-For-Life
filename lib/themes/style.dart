import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appLogo = Container(
  child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: Image.asset(
        "assets/images/logo.png",
        width: 4,
        height: 4,
        alignment: Alignment.center,
      )),
);

Card cards(String titleText, String imgLink) {
  return Card(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: 360,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imgLink,
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                height: 100,
                width: 360,
                alignment: Alignment.center,
                child: ListTile(
                  title: Text(
                    titleText,
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(-1.0, 1.5),
                            blurRadius: 5.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(1.0, 1.5),
                            blurRadius: 8.0,
                            color: Color.fromARGB(125, 30, 30, 30),
                          ),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                  tileColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ));
}

TextStyle simpleText() {
  return GoogleFonts.ubuntu(
    textStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w100,
      fontSize: 15,
    ),
  );
}
