import 'package:flutter/material.dart';

class ThemeChange extends  ChangeNotifier
{
  bool isDark = false;

  void Theme()
  {
    isDark = !isDark;
    notifyListeners();
  }
}