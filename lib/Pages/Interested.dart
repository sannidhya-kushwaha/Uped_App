import 'package:flutter/material.dart';

class Interest extends StatefulWidget {
  static const routename = '/Interest';

  @override
  _InterestState createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  var isSelected = false;
  var mycolor = Colors.white;
  void toggleSelection() {
    setState(() {
      if (isSelected) {
        mycolor = Colors.white;
        isSelected = false;
      } else {
        mycolor = Colors.grey[300];
        isSelected = true;
      }
    });
  }

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
                          ),
                        ),
                        textColor: Colors.white,
                        color: Color(0xFF9966cc),
                        onPressed: () {}),
                  ),
                  SizedBox(height: 10),
                  Column(children: [
                    ListTile(
                      selected: isSelected,
                      leading: const Icon(Icons.info),
                      title: new Text("Test"),
                      onTap: toggleSelection,
                    ),
                    ListTile(
                      selected: isSelected,
                      leading: const Icon(Icons.info),
                      title: new Text("Test"),
                      onTap: toggleSelection,
                    ),
                    ListTile(
                      selected: isSelected,
                      leading: const Icon(Icons.info),
                      title: new Text("Test"),
                      onTap: toggleSelection,
                    ),
                  ]),
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
                                  onPressed: () {}),
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
