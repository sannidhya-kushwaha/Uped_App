import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text(
          'This is SearchPage',
          style: TextStyle(
              color: Colors.white, fontSize: 45, fontFamily: 'cursive'),
        ),
      ),
    );
  }
}
