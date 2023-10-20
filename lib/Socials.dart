import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/EducationDetails.dart';
import 'package:url_launcher/url_launcher.dart';

_launchGithubApp() async {
  try {
    var url = Uri.parse("https://github.com/kingmanas");
    await launchUrl(url);
  } catch (e) {
    print(e);
  }
}

_launchInstagramApp() async {
  // var url = Uri.parse("https://www.instagram.com/?hl=en");
  // if (await canLaunchUrl(url)) {
  //   await launchUrl(url);
  // } else {
  //   throw 'Could not launch $url';
  // }
  try {
    var url = Uri.parse("https://www.instagram.com/king_manas1/");
    await launchUrl(url);
  } catch (e) {
    print(e);
  }
}

_launchLinkedinApp() async {
  try {
    var url =
        Uri.parse("https://www.linkedin.com/in/manas-srivastava-7618371b5/");
    await launchUrl(url);
  } catch (e) {
    print(e);
  }
}

_launchGmailApp() async {
  try {
    var url = Uri.parse("https://mail.google.com/");
    await launchUrl(url);
  } catch (e) {
    print(e);
  }
}

class Socials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

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
        body: GridView.count(
          crossAxisCount: 4,
          children: [
            GestureDetector(
              onTap: () {
                _launchGithubApp();
              },
              child: SvgPicture.asset(
                'assets/images/github.svg',
                height: h * 025,
                width: w * 0.25,
              ),
            ),
            GestureDetector(
              onTap: () {
                _launchInstagramApp();
              },
              child: SvgPicture.asset(
                'assets/images/instagram.svg',
                height: h * 025,
                width: w * 0.25,
              ),
            ),
            GestureDetector(
              onTap: () {
                _launchGmailApp();
              },
              child: SvgPicture.asset(
                'assets/images/gmail (1).svg',
                height: h * 025,
                width: w * 0.25,
              ),
            ),
            GestureDetector(
              onTap: () {
                _launchLinkedinApp();
              },
              child: SvgPicture.asset(
                'assets/images/linkedin.svg',
                height: h * 025,
                width: w * 0.25,
              ),
            )
          ],
        ));
  }
}
