import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../1.4/view/home_page.dart';
import '../provider/OneTime_Screen.dart';

class OnetimePage3 extends StatelessWidget {
  const OnetimePage3({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    OnetimeScreen OnetimeScreenTrue =
        Provider.of<OnetimeScreen>(context, listen: true);
    OnetimeScreen OnetimeScreenFalse =
        Provider.of<OnetimeScreen>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: height * 0.5 + 20,
              width: width * 0.99,
              child: Image(
                image: AssetImage('assets/img/img2.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              'Simple To Use',
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              '  Lorem ipsum dolor sit amet,consetetur\nsadipscing elitr,sed diam nonumy eirmod\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttempor.',
              style: TextStyle(fontSize: 20, color: Colors.black45),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                height: height * 0.053,
                width: width * 0.75,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.035,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.41,
                ),
                Container(
                  height: height * 0.013,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: height * 0.013,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: height * 0.013,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
