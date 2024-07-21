import 'package:advnce_flutter_daily_task/Screens/stepper/Stepper.dart';
import 'package:flutter/cupertino.dart';

import '../Screens/stepper/StepperPage.dart';

class MyRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => StepperScreen(),
    '/Page' : (context) => StepperPage2(),
  };
}
