import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          elevation: 4,
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.02),
            Image(image: AssetImage('assets/img/gallary2.jpg'))
          ],
        ),
      ),
    );
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
  'assets/images/GalleryImages/1.jpg',
  'assets/images/GalleryImages/2.jpg',
  'assets/images/GalleryImages/3.jpg',
  'assets/images/GalleryImages/4.jpeg',
  'assets/images/GalleryImages/5.jpeg',
  'assets/images/GalleryImages/6.jpg',
  'assets/images/GalleryImages/7.jpeg',
  'assets/images/GalleryImages/8.jpeg',
  'assets/images/GalleryImages/9.jpg',
  'assets/images/GalleryImages/10.webp',
  'assets/images/GalleryImages/11.jpg',
  'assets/images/GalleryImages/12.jpg',
];
