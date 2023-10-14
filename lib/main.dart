import 'package:flutter/material.dart';

void main() {
  runApp(MeraApp());
}

class MeraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        textTheme: TextTheme(
            displayLarge: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
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
      appBar: AppBar(
        title: Center(
          child: Text(
            'PORTFOLIO',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black87,
        child: Text(
          'Manas Srivastava',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
