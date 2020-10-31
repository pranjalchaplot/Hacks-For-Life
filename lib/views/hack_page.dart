import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/themes/style.dart';
import 'package:main/themes/theme_text.dart';

class HackPage extends StatelessWidget {
  final Color backgroundColor;
  final String hackText;

  const HackPage({
    Key key,
    @required this.backgroundColor,
    @required this.hackText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(
            "Hacks For Life",
            style: GoogleFonts.oxygen(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.share_outlined),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 35),
              child: Card(
                color: backgroundColor,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 400,
                          width: 360,
                          alignment: Alignment.center,
                          child: ListTile(
                            title: Text(
                              hackText,
                              style: ThemeText.headline,
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
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 26),
                          child: Icon(
                            Icons.chevron_left_rounded,
                            color: Colors.white,
                            size: 50,
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          "Previous",
                          style: simpleText(),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 26),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 50,
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text("Next", style: simpleText()),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
