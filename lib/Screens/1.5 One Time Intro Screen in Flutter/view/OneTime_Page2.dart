import 'package:flutter/material.dart';

import 'OneTime_Page3.dart';

class OnetimePage2 extends StatelessWidget {
  const OnetimePage2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => OnetimePage3(),
                ),
              );
            },
              child: Container(
                height: height * 0.5 + 20,
                width: width * 0.99,
                child: Image(
                  image: AssetImage('assets/img/img1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              'Easy To Share',
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 4,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(textAlign: TextAlign.center,
              '  Lorem ipsum dolor sit amet,consetetur\nsadipscing elitr,sed diam nonumy eirmod\n tempor.',
              style: TextStyle(fontSize: 20, color: Colors.black45),
            ),
            SizedBox(height: height * 0.1,),
            Row(
              children: [
                SizedBox(width: width * 0.41,),
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
                Container(
                  height: height * 0.013,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.black12,
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
