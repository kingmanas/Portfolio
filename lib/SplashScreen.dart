import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text(
            'WELCOME',
            style: TextStyle(
              fontFamily: 'Font2',
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
