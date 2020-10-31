import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/themes/style.dart';
import 'package:main/views/hack_page.dart';
import 'package:main/views/hack_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
        const Color(0xff340707),
        const Color(0xff261f28),
      ])),
      child: Scaffold(
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
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: MyHacks()),
    );
  }
}

class MyHacks extends StatefulWidget {
  @override
  _MyHacksState createState() => _MyHacksState();
}

class _MyHacksState extends State<MyHacks> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return ListView(
        // shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        // padding: EdgeInsets.only(top: 10.0),
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => HackPage(
                      backgroundColor: Colors.green,
                      hackText: "Mera Naam Pranjal",
                    ),
                  ),
                );
              },
              child: cards(
                "Technology",
                'assets/images/technology.jpg',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => HackScreen(
                    collectionPath: "travel",
                  ),
                ),
              );
            },
            child: cards(
              "Travel",
              'assets/images/traveler.jpg',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: cards(
              "Food & Drinks",
              'assets/images/foodie.jpg',
            ),
          ),
        ]);
  }
}
