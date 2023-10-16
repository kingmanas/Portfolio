import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/EducationDetails.dart';

class Socials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SOCIALS',
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
    );
  }
}
