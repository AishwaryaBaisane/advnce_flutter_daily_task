import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/1.4/provider/1.4_provider.dart';
import 'Screens/1.4/view/home_page.dart';
import 'Screens/1.5 One Time Intro Screen in Flutter/provider/OneTime_Screen.dart';
import 'Screens/1.5 One Time Intro Screen in Flutter/view/OneTime_Page.dart';
import 'Screens/1.5 Quotes Data Solving with Provider/view/quote_app.dart';
import 'Screens/1.6 Contact Us Page With Interaction/provider/provider.dart';
import 'Screens/1.6 Contact Us Page With Interaction/view/homepage.dart';

bool theme1 = false;
bool isHomed = false;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactPageProvider(),


      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactPage(),
      ),
    );
  }
}





