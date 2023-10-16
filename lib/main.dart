import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio/EducationDetails.dart';
import 'package:portfolio/Socials.dart';
import 'package:portfolio/SplashScreen.dart';

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
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Font2'),
            displayMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Font2',
                fontSize: 28,
                color: Colors.white),
            displaySmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              color: Colors.white,
            )),
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text(
            'MY PORTFOLIO',
            style: Theme.of(context).textTheme.displayLarge,
          ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10, top: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Manas.jpg'),
                radius: 90,
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
            ),
            Container(
              child: Text(
                "Hi I'm..",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            Container(
              child: Text(
                "MANAS SRIVASTAVA",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white70)),
                child: Card(
                  color: Colors.black,
                  shadowColor: Colors.white,
                  elevation: 15,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Flutter Developer',
                            style: Theme.of(context).textTheme.displaySmall),
                      ),
                      ListTile(
                        title: Text('BlockChain Enthusiast',
                            style: Theme.of(context).textTheme.displaySmall),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
            ),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EducationDetails(),
                          ),
                        );
                      },
                      child: Text('Education Details')),
                ),
                Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Socials(),
                          ),
                        );
                      },
                      child: Text('Socials')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
