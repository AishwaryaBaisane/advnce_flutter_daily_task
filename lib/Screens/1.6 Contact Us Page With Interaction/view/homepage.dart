import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ContactPageProvider contactPageProvider =
        Provider.of<ContactPageProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.blueAccent,
                size: 25,
              ),
              title: Text(
                'Contact Us',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueAccent),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              textAlign: TextAlign.center,
              'if you have any queries, get in touch with\n us.We will be happy to hel you!',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            InkWell(
              onTap: () {
                contactPageProvider.phoneLauncher();
              },
              child: Container(
                height: height * 0.09,
                width: width * 0.85,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffdfe5f8)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Icon(
                        Icons.mobile_screen_share_rounded,
                        size: 45,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Text(
                        '+91 1234567890',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            InkWell(
              onTap: () {
                contactPageProvider.mailLauncher();
              },
              child: Container(
                height: height * 0.09,
                width: width * 0.85,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffdfe5f8)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Icon(
                        Icons.email_outlined,
                        size: 45,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Text(
                        'info@xyzmail.com',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            Container(
              height: height * 0.44,
              width: width * 0.85,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffdfe5f8),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Social Media',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.blueAccent),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Divider(
                    color: Color(0xfff0f6f8),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Image(
                        image: AssetImage('assets/img/be.jpg'),
                        height: height * 0.1,
                        width: width * 0.10,
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Text(
                        'Haikuzen',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    endIndent: 30,
                    indent: 35,
                    color: Color(0xffdfe5f8),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.06,
                      ),
                      InkWell(
                        onTap: () {
                          contactPageProvider.instaLauncher();
                        },
                        child: Image(
                          image: AssetImage('assets/img/insta.jpg'),
                          height: height * 0.1,
                          width: width * 0.16,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.045,
                      ),
                      const Text(
                        'haikuzen_designs',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    endIndent: 30,
                    indent: 35,
                    color: Color(0xffdfe5f8),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Image(
                        image: AssetImage('assets/img/bro.jpg'),
                        height: height * 0.1,
                        width: width * 0.20,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        'Haikuzen',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
