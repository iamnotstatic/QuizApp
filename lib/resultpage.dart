import 'package:flutter/material.dart';
import 'package:quizapp/home.dart';

class resultPage extends StatefulWidget {
  int marks;
  resultPage({Key key, @required this.marks}) : super(key: key);
  @override
  _resultPageState createState() => _resultPageState(marks);
}

class _resultPageState extends State<resultPage> {
  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png"
  ];

  String message;
  String image;

  @override
  void initState() {
    if (marks < 20) {
      image = images[2];
      message = "You should Try Hard.. \n" + "You scored $marks";
    } else if (marks < 35) {
      image = images[1];
      message = "You can do Better.. \n" + "You scored $marks";
    } else {
      image = images[0];
      message = "You did Very well.. \n" + "You scored $marks";
    }
    super.initState();
  }

  int marks;
  _resultPageState(this.marks);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Material(
              elevation: 10,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(image),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                      child: Center(
                        child: Text(
                          message,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Quando",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
