import 'package:flutter/material.dart';
import 'package:sample_signup_login/SignupPage.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';

class LandingPage extends StatefulWidget {
  static const routeName = '/LandingPage';
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: isActive ? 34.0 : 12.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

//  Pop up box for Exiting the app ...niche
  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Do you really want to exit the app?"),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () => Navigator.pop(context, false),
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed, // Pop up box for Exiting the app
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //skip
            Container(
              height: 500.0, // original 600.0
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage(
                              'images/landingpage1.jpeg',
                            ),
                            height: 300.0,
                            width: 300.0,
                          ),
                        ),
                        Center(
                          child: Text(
                            'High Temperature is a risk',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'CM Sans Serif',
                              fontSize: 20.0, // original 26.0
                              // height: 1.3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0, // original 18.0
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage(
                              'images/landingpage2.jpeg',
                            ),
                            height: 300.0,
                            width: 300.0,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Wear mask to protect\n you and your family',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'CM Sans Serif',
                              fontSize: 16.0, // original 26.0
                              fontWeight: FontWeight.bold,
                              height: 1.3,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0, // original 18.0
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage(
                              'images/landingpage3.jpeg',
                            ),
                            height: 300.0,
                            width: 300.0,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Maintain social distancing\nwhile going out',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'CM Sans Serif',
                              fontSize: 16.0, // original 26.0
                              height: 1.3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0, // original 18.0
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0), // original 40.0
              child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      new RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        child: new Text(
                          "Uped Memeber",
                          style: new TextStyle(
                            fontSize: 15.0,
                            //       fontFamily: 'Futura',
                          ),
                        ),
                        textColor: Colors.white,
                        color: Color(0xFF9966cc),
                        onPressed: () {
                          Navigator.of(context).pushNamed(LoginPage.routeName);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      new RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        child: new Text(
                          "New Memeber",
                          style: new TextStyle(
                            fontSize: 15.0,
                            //       fontFamily: 'Futura',
                          ),
                        ),
                        textColor: Colors.white,
                        color: Color(0xFF9966cc),
                        onPressed: () {
                          Navigator.of(context).pushNamed(SignupPage.routeName);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
