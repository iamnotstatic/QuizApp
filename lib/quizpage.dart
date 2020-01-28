import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class getJson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/python.json"),
      builder: (context, snapshot) {
        var mydata = jsonDecode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
              body: Center(
            child: Text(
              "Loading",
            ),
          ));
        } else {
          return quizpage();
        }
      },
    );
  }
}

class quizpage extends StatefulWidget {
  @override
  _quizpageState createState() => _quizpageState();
}

class _quizpageState extends State<quizpage> {
  Widget choicebutton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "option 1",
          style: TextStyle(
              color: Colors.white, fontFamily: "Alike", fontSize: 16.0),
          maxLines: 1,
        ),
        color: Colors.indigo,
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 45.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return WillPopScope(
      onWillPop: () {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Quiz App"),
            content: Text("You Can't Go Back At This Stage"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Ok"),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "This is a sample question which will will be displayed ?",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Quando",
                    ),
                  ),
                )),
            Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      choicebutton(),
                      choicebutton(),
                      choicebutton(),
                      choicebutton(),
                    ],
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                child: Center(
                  child: Text(
                    "30",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Time New Roman',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
