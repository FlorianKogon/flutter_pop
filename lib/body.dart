import 'package:flutter/material.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();

}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        onPressed: test,
        color: Colors.teal,
        textColor: Colors.black,
        child: Text(
            "Appuyez",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  void test() {
    setState(() {
      print("on a cliqué");
    });
  }
}