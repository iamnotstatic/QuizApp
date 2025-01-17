import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizapp/quizpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    'images/py.png',
    'images/java.png',
    'images/js.png',
    'images/cpp.png',
    'images/linux.png'
  ];
  Widget customcard(String langname, String image) {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => getJson()));
        },
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
                        fit: BoxFit.contain,
                        image: AssetImage(
                          image,
                        ),
                      )),
                    ),
                  ),
                ),
                Center(
                    child: Text(
                  langname,
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
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QuizApp",
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Python", images[0]),
          customcard("Java", images[1]),
          customcard("Javascript", images[2]),
          customcard("C++", images[3]),
          customcard("Linux", images[4]),
        ],
      ),
    );
  }
}
