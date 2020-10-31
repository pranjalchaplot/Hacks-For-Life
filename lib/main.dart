import 'package:flutter/material.dart';
import 'package:main/views/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hacks For Life",
      theme: ThemeData(
        primaryColor: Color(0xFF1A1717),
        scaffoldBackgroundColor: Color(0xFF2A2424),
        accentColor: Colors.yellowAccent,
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
