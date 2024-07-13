import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/1.4/provider/1.4_provider.dart';
import 'Screens/1.4/view/home_page.dart';
import 'Screens/1.5 One Time Intro Screen in Flutter/provider/OneTime_Screen.dart';
import 'Screens/1.5 One Time Intro Screen in Flutter/view/OneTime_Page.dart';
import 'Screens/1.5 Quotes Data Solving with Provider/view/quote_app.dart';

bool theme1 = false;
bool isHomed = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool theme = sharedPreferences.getBool('theme') ?? false;
  isHomed = sharedPreferences.getBool('theme') ?? false;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeChange(isHomed),
        ),
        ChangeNotifierProvider(
          create: (context) => OnetimeScreen(theme),
        ),
      ],
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeChange ThemeChangeTrue =
        Provider.of<ThemeChange>(context, listen: true);
    ThemeChange ThemeChangeFalse =
        Provider.of<ThemeChange>(context, listen: false);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.purple,
          onPrimary: Colors.green,
          secondary: Colors.blue,
          onSecondary: Colors.deepOrangeAccent,
          error: Colors.red,
          onError: Colors.redAccent,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
           primary: Colors.amber,
          onPrimary: Colors.blue,
          secondary: Colors.pink,
          onSecondary: Colors.yellowAccent,
          error: Colors.red,
          onError: Colors.redAccent,
          surface: Colors.black,
          onSurface: Colors.white,
        ),
      ),
      themeMode: ThemeChangeTrue.isDark ? ThemeMode.dark : ThemeMode.light,
      home: (!theme1) ? HomeScreen() : OnetimePage(),
    );
  }
}
