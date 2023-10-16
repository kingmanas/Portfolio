import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio/Socials.dart';
import 'package:portfolio/main.dart';

class EducationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Education Details',
          style: TextStyle(fontFamily: 'Font2', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade900,
              gap: 6,
              padding: EdgeInsets.all(20),
              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.account_balance,
                  text: 'Education',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EducationDetails(),
                      ),
                    );
                  },
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Socials',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Socials(),
                      ),
                    );
                  },
                ),
              ]),
        ),
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(8.0),
              child: Text(
                'High School And Inter Passed From AATREYA ACADEMY ,Pratapgarh(U.P)',
                style: TextStyle(fontFamily: 'Font2', fontSize: 20),
              )),
          Container(
              margin: EdgeInsets.all(8.0),
              child: Text(
                'Currently Pursuing Btech in CSE From AKGEC Ghaziabad(U.P)',
                style: TextStyle(fontFamily: 'Font2', fontSize: 20),
              )),
        ],
      ),
    );
  }
}
