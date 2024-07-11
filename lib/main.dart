import 'package:advnce_flutter_daily_task/Screens/1.4/view/home_page.dart';
import 'package:advnce_flutter_daily_task/Screens/1.5%20Quotes%20Data%20Solving%20with%20Provider/provider/provider.dart';
import 'package:advnce_flutter_daily_task/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/1.4/provider/1.4_provider.dart';
import 'Screens/1.5 Quotes Data Solving with Provider/view/quote_app.dart';

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
      create: (context) => QuoteProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuotePage(),
      ),
    );
  }
}
