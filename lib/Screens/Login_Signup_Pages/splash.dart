import 'dart:async';
import 'package:FlutterNewApp/Screens/HomeMain.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeMain())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.white,
          // height: 100,
          // width: 100,
          child: Center(
            child: Image(image: AssetImage('assets/images/Signup/Splash.jpg'),
            fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}
