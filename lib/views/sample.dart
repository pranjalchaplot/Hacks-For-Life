import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sample extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(0),
        ),
        title: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 5, right: 40),
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
      body: Quotes(
        backgroundColor: Colors.white30,
        hack: "super se uper",
      ),
    );
  }
}

class Quotes extends StatelessWidget {
  final Color backgroundColor;
  final String hack;

  const Quotes({Key key, this.backgroundColor, this.hack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
    );
  }
}
