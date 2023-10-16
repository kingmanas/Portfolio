import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/EducationDetails.dart';
import 'package:url_launcher/url_launcher.dart';

_launchGithubApp() async {
  var url = Uri.parse("https://github.com/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchInstagramApp() async {
  var url = Uri.parse("https://www.instagram.com/?hl=en");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchLinkedinApp() async {
  var url =
      Uri.parse("https://www.linkedin.com/in/manas-srivastava-7618371b5/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
      body: Row(
        children: [
          GestureDetector(
            onTap: () => _launchGithubApp(),
            child: SvgPicture.asset(
              "github.svg",
              height: 80,
            ),
          ),
          GestureDetector(
            onTap: () => _launchInstagramApp(),
            child: SvgPicture.asset(
              'instagram.svg',
              height: 70,
              width: 30,
            ),
          ),
          GestureDetector(
            onTap: () => _launchLinkedinApp(),
            child: SvgPicture.asset(
              'linkedin.svg',
              height: 70,
              width: 30,
            ),
          ),
          GestureDetector(
            onTap: () => _launchLinkedinApp(),
            child: SvgPicture.asset(
              'gmail(1).svg',
              height: 70,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
