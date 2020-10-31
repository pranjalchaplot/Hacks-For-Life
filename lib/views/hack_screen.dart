import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:main/views/hack_page.dart';
import 'package:random_color/random_color.dart';

class HackScreen extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instanceFor();
  final RandomColor _randomColor = RandomColor();

  final String collectionPath;

  HackScreen({
    Key key,
    @required this.collectionPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _firestore.collection(collectionPath).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return _LoadingIndicator();
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) {
              final document = snapshot.data.docs[index].data();
              return HackPage(
                backgroundColor: _randomColor.randomColor(
                  colorBrightness: ColorBrightness.dark,
                ),
                hackText: document['hack'],
              );
            },
          );
        },
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
