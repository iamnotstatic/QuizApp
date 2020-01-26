import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget customcard() {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      child: ClipOval(
                          child: Image(
                        image: AssetImage(
                          'images/py.png',
                        ),
                      )),
                    ),
                  ),
                ),
                Center(
                    child: Text(
                  "Python",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontFamily: "Quando",
                    fontWeight: FontWeight.bold,
                  ),
                )),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "jlhwdochdbnbjkdiceuidhweuihdeoquodhqeudhquoduqowdhuhwdoqwhduohduowdohwodhqeuodhqeodhqeuodhouedheuodhoeuqdh",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "Amike",
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QuizApp",
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard(),
        ],
      ),
    );
  }
}
