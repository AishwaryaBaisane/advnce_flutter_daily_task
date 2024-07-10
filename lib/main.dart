import 'package:advnce_flutter_daily_task/Screens/1.4/view/home_page.dart';
import 'package:advnce_flutter_daily_task/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/1.4/provider/1.4_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ChangeNotifierProvider(
      create: (context) => ThemeChange(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Colors.purple,
            secondary: Colors.green,
            onPrimary: Colors.blue,
            onSecondary: Colors.orange,
          ),
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
            primary: Colors.amber,
            secondary: Colors.blue,
            onPrimary: Colors.pink,
            onSecondary: Colors.yellow,
          ),
        ),
        themeMode: Provider.of<ThemeChange>(context).isDark
            ? ThemeMode.dark
            : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
