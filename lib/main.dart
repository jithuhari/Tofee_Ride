import 'package:flutter/material.dart';
import 'package:FlutterNewApp/Screens/HomeMain.dart';
import 'package:FlutterNewApp/Screens/Login_Signup_Pages/splash.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/Splash',
    routes: {
      '/HomeMain':(context) =>HomeMain(),
      '/Splash':(context) =>Splash(),
    },
  ));
}

