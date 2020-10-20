import 'package:flutter/material.dart';
import 'HomePage.dart';

class InterestPage extends StatelessWidget {
  static const routename = '/InterestPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.deepPurpleAccent),
                        ),
                        child: new Text(
                          "Interested In",
                          style: new TextStyle(
                            fontSize: 15.0,

                            //       fontFamily: 'Futura',
                          ),
                        ),
                        textColor: Colors.white,
                        color: Color(0xFF9966cc),
                        onPressed: () {}),
                  ),
                  SizedBox(height: 10),
                  Center(
                    // child: Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 45.0),
                              child: new Text(
                                "JavaScript",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  // color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 110.0),
                              child: new Text(
                                "C++",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  //color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 55.0),
                              child: new Text(
                                "Python",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  // color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 108.0),
                              child: new Text(
                                "Art & Craft",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  //color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 45.0),
                              child: new Text(
                                "Carpentry",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  // color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 95.0),
                              child: new Text(
                                "   Full-Stack\nDevelopment",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  //color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 45.0),
                              child: new Text(
                                "Accounting",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  // color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 85.0),
                              child: new Text(
                                "Civil Services",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  //color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                            FlatButton(
                                child: Image.asset(
                                  "images/logo1.png",
                                  height: 110.0,
                                  width: 110.0,
                                ),
                                onPressed: () {}),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: new Text(
                                "Bio-Technology",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  // color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 95.0),
                              child: new Text(
                                "Botany",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  //color: Color(0xFF9966cc),
                                  //     fontFamily: 'Futura',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              ButtonTheme(
                                minWidth: 170.0,
                                child: new FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.deepPurpleAccent),
                                    ),
                                    child: Text(
                                      "Done!",
                                      style: new TextStyle(
                                        fontSize: 15.0,

                                        //       fontFamily: 'Futura',
                                      ),
                                    ),
                                    textColor: Colors.white,
                                    color: Color(0xFF9966cc),
                                    onPressed: () {}),
                              ),
                              new FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: Colors.deepPurpleAccent),
                                  ),
                                  child: Text(
                                    "Skip",
                                    style: new TextStyle(
                                      fontSize: 15.0,

                                      //       fontFamily: 'Futura',
                                    ),
                                  ),
                                  textColor: Colors.white,
                                  color: Color(0xFF9966cc),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacementNamed(
                                        HomePage.routeName);
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
