import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../StepperPage.dart';
import '../Provider/Photo_Gallary.dart';

class GalleryBiometricAuthentication extends StatelessWidget {
  const GalleryBiometricAuthentication({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    GalleryProvider galleryProvider =
        Provider.of<GalleryProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          leading: const Icon(
            Icons.menu,
          ),
          centerTitle: true,
          title: const Text(
            'Gallery',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert, size: width * 0.08),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('Hide Folders',
                      style: TextStyle(fontSize: width * 0.042)),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Setting',
                      style: TextStyle(fontSize: width * 0.042)),
                ),
              ],
              onSelected: (item) async {
                if (item == 0) {
                  galleryProvider.localUserAuthentication(context);
                }
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: height * 0.08,),
              SingleChildScrollView(
                child: Wrap(
                  spacing: width * 0.04,
                  children: List.generate(
                    headings.length,
                    (index) => Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: height * 0.14,
                          width: width * 0.27,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(galleryImages[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue),
                        ),
                        Text(
                          headings[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.038),
                        ),
                        Text(
                          galleryProvider.randomNumber().toString(),
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.028),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // SizedBox(height: height * 0.02),
    // SizedBox(
    //   height: height * 0.84,
    //   child: Image(
    //     image: AssetImage('assets/img/gallary2.jpg'),
    //     fit: BoxFit.cover,
    //   ),
    // ),
  }
}

List headings = [
  'Camera',
  'Family',
  'Facebook',
  'WhatsApp',
  'ScreenShot',
  'Instagram',
  'Download',
  'College',
  'Nature',
  'Animals',
  'Birds',
  'Car',
];

List galleryImages = [
  'assets/img/gallary_img/img1.jpg',
  'assets/img/gallary_img/img2.jpg',
  'assets/img/gallary_img/img3.jpg',
  'assets/img/gallary_img/img4.jpg',
  'assets/img/gallary_img/img5.jpg',
  'assets/img/gallary_img/img6.jpg',
  'assets/img/gallary_img/img7.jpg',
  'assets/img/gallary_img/img8.jpg',
  'assets/img/gallary_img/img9.jpg',
  'assets/img/gallary_img/img10.jpg',
  'assets/img/gallary_img/img11.jpg',
  'assets/img/gallary_img/img12.jpg',
];
