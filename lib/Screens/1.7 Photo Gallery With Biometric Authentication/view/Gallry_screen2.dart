import 'package:flutter/material.dart';

class GalleryScreen2 extends StatelessWidget {
  const GalleryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.02),
            Container(
              height: height * 0.9 + 20,
              width: width * 0.9 + 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/gallary8.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
