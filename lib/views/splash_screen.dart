import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:main/views/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // int percentage = 1;
  // double _initial = 0.0;

  // void update() {
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     setState(() {
  //       _initial = _initial + 0.2;
  //     });
  //   });
  // }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    // update();
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                const Color(0xff261f28),
                const Color(0xff340707),
              ],
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 120,
                          height: 120,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Hacks for Life",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Container(
                      //   margin: EdgeInsets.symmetric(vertical: 10),
                      //   width: 220,
                      //   height: 20,
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.all(Radius.circular(10)),
                      //     child: LinearProgressIndicator(
                      //       value: _initial,
                      //       valueColor: new AlwaysStoppedAnimation<Color>(
                      //           Colors.redAccent),
                      //       backgroundColor: Colors.white10,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
