import 'SubPages/UploadPlzz.dart';
import 'package:flutter/material.dart';
import 'PageContainer.dart';
import 'Pages/MainPage.dart';
import 'package:sample_signup_login/Pages/ProfilePage.dart';

import 'SubPages/UploadPhotoPage.dart';

import 'InterestPage.dart';

import 'SplashScreen.dart';
import 'LandingPage.dart';
import 'loginPage.dart';
import 'SignupPage.dart';

import 'HomePage.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UPED PC",
      debugShowCheckedModeBanner: true,
      home: SplashScreen(),
      routes: {
        LandingPage.routeName: (ctx) => LandingPage(),
        SignupPage.routeName: (ctx) => SignupPage(),
        LoginPage.routeName: (ctx) => LoginPage(),
        InterestPage.routename: (ctx) => InterestPage(),
        HomePage.routeName: (ctx) => HomePage(),
        UploadPhotoPage.routeName: (ctx) => UploadPhotoPage(),
        Sks.routeName: (ctx) => Sks(),
      },
    );
  }
}
