import 'package:flutter/material.dart';
import 'package:sample_signup_login/Pages/MainPage.dart';
import 'package:sample_signup_login/Pages/NotificationPage.dart';
import 'package:sample_signup_login/Pages/ProfilePage.dart';
import 'package:sample_signup_login/Pages/SearchPage.dart';
import 'package:sample_signup_login/Pages/UploadPage.dart';

class PageContainer extends StatefulWidget {
  @override
  _PageContainerState createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  int _selectedTab = 2;
  final _pageOptions = [
    ProfilePage(),
    NotificationPage(),
    MainPage(),
    SearchPage(),
    // UploadPage()
    UploadPhotoPage(),
    //  Sks(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(size: 40),
        // selectedFontSize: 35,

        iconSize: 30.0,
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Container(height: 0.0),
          ),
        ],
      ),
    );
  }
}
