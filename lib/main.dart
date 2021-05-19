import 'package:flutter/material.dart';
import 'package:FlutterNewApp/Screens/HomeMain.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/HomeMain',
    routes: {
      '/HomeMain':(context) =>HomeMain(),
    },
  ));
}

