import 'package:flutter/material.dart';
import 'UploadPage.dart';

class MainPage extends StatefulWidget {
  static const routename = '/photoUpload';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: IconButton(
          icon: Icon(Icons.camera),
          iconSize: 35,
          onPressed: () {
            Navigator.of(context).pushNamed(UploadPhotoPage.routeName);
          },
        ),
      ),
    );
  }
}
