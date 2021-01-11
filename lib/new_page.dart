import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {

  NewPage(String title) {
    this.title = title;
  }

  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("Je suis une nouvelle page",
          textScaleFactor: 3.0,
          style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.teal
          ),
        ),
      ),
    );
  }
}