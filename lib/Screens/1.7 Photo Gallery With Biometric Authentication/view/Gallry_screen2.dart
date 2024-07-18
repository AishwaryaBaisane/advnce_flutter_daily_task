import 'package:flutter/material.dart';

class GalleryScreen2 extends StatelessWidget {
  const GalleryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 9,right: 10.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                          fontSize: width * 0.05, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Select',
                      style: TextStyle(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01,),
                SingleChildScrollView(
                  child: Wrap(
                    spacing: width * 0.01,
                    children: List.generate(
                      Gallary2.length,
                      (index) => Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: height * 0.070,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Gallary2[index]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Yesterday',
                      style: TextStyle(
                          fontSize: width * 0.05, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Select',
                      style: TextStyle(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01,),
                SingleChildScrollView(
                  child: Wrap(
                    spacing: width * 0.01,
                    children: List.generate(
                      Gallary3.length,
                          (index) => Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: height * 0.070,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Gallary3[index]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List Gallary2 = [
  'assets/img/gallary2/gl1.jpg',
  'assets/img/gallary2/gl2.jpg',
  'assets/img/gallary2/gl3.jpg',
  'assets/img/gallary2/gl4.jpg',
  'assets/img/gallary2/gl5.jpg',
  'assets/img/gallary2/gl6.jpg',
  'assets/img/gallary2/gl7.jpg',
  'assets/img/gallary2/gl8.jpg',
  'assets/img/gallary2/gl9.jpg',
  'assets/img/gallary2/gl10.jpg',
  'assets/img/gallary2/gl11.jpg',
  'assets/img/gallary2/gl12.jpg',
  'assets/img/gallary2/gl13.jpg',
  'assets/img/gallary2/gl14.jpg',
  'assets/img/gallary2/gl15.jpg',
  'assets/img/gallary2/gl16.jpg',
  'assets/img/gallary2/gl17.jpg',
  'assets/img/gallary2/gl1.jpg',
  'assets/img/gallary2/gl18.jpg',
  'assets/img/gallary2/gl19.jpg',
  'assets/img/gallary2/gl112.jpg',
  'assets/img/gallary2/gl30.jpg',
  'assets/img/gallary2/gl11.jpg',
  'assets/img/gallary2/gl12.jpg',

];

List Gallary3 = [
  'assets/img/gallary2/gl21.jpg',
  'assets/img/gallary2/gl22.jpg',
  'assets/img/gallary2/gl23.jpg',
  'assets/img/gallary2/gl24.jpg',
  'assets/img/gallary2/gl5.jpg',
  'assets/img/gallary2/gl26.jpg',
  'assets/img/gallary2/gl27.jpg',
  'assets/img/gallary2/gl28.jpg',
  'assets/img/gallary2/gl29.jpg',
  'assets/img/gallary2/gl30.jpg',
  'assets/img/gallary2/gl11.jpg',
  'assets/img/gallary2/gl34.jpg',
  'assets/img/gallary2/gl13.jpg',
  'assets/img/gallary2/gl14.jpg',
  'assets/img/gallary2/gl15.jpg',
  'assets/img/gallary2/gl33.jpg',
  'assets/img/gallary2/gl17.jpg',
  'assets/img/gallary2/gl41.jpg',
  'assets/img/gallary2/gl18.jpg',
  'assets/img/gallary2/gl19.jpg',
  'assets/img/gallary2/gl112.jpg',
  'assets/img/gallary2/gl31.jpg',
  'assets/img/gallary2/gl32.jpg',
  'assets/img/gallary2/gl33.jpg',
];

