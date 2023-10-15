import 'package:flutter/material.dart';

void main() {
  runApp(MeraApp());
}

class MeraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
            displayLarge: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Font1'),
            displayMedium: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.white)),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Center(
          child: Text(
            'MY PORTFOLIO',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 50, top: 50),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/Manas.jpg'),
          radius: 150,
        ),
      ),
    );
  }
}
