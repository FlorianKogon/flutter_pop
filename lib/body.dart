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
        onPressed: snack,
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

  void snack() {
    SnackBar snackBar = SnackBar(
      duration: Duration(seconds: 1),
      content:
        Text('Je suis une snackbar')
      );
    Scaffold.of(context).showSnackBar(snackBar);
  }
  
}