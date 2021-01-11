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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RaisedButton(
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
          RaisedButton(
            onPressed: alert,
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
          RaisedButton(
            onPressed: () => dialog('Test', 'Ceci est un test'),
            child: Text(
              "Appuyez",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      )
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

  Future<Null> alert() async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Ceci est une alerte", textScaleFactor: 2.0,),
          content: Text("ALLO"),
          contentPadding: EdgeInsets.all(5.0),
          actions: <Widget>[
            FlatButton(
                onPressed: () => {
                  print('test1'),
                  Navigator.pop(context)
                },
                child: Text('Annulez', style: TextStyle(color: Colors.red, fontSize: 8.0),
                ),
            ),
            FlatButton(
                onPressed: () => {
                  print('test2'),
                  Navigator.pop(context)
                },
                child: Text('Acceptez', style: TextStyle(color: Colors.teal, fontSize: 12.0),
                ),
            ),
          ],
        );
      }
    );
  }

  Future<Null> dialog(String title, String description) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(title, textScaleFactor: 1.4,),
          contentPadding: EdgeInsets.all(10.0),
          children: [
            Text(
              description,
              textScaleFactor: 1.2,
            ),
            RaisedButton(
              color: Colors.teal,
              onPressed: () => {
                Navigator.pop(context)
              },
              child: Text(
                "Appuyez",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        );
      }
    );
  }
}