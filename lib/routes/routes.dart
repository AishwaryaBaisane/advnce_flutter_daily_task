import 'package:advnce_flutter_daily_task/Screens/Stepper.dart';
import 'package:advnce_flutter_daily_task/Screens/StepperPage.dart';
import 'package:flutter/cupertino.dart';

class MyRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => StepperScreen(),
    '/Page' : (context) => StepperPage2(),
  };
}
