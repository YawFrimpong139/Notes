import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:notes/themes/theme.dart';

class ThemeProvider with ChangeNotifier {
  // initial theme is the lightmode theme
  ThemeData _themeData = lightMode;

  // getter method to access the theme from other parts of the code  
  ThemeData get themeData => _themeData;
  
  // getter method to check whether the theme is in dark mode or not
  bool get isDarkMode => _themeData == darkMode;

  // setter method to set the new theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // function to toggle modes
  void toggleTheme() {
    if(_themeData == lightMode){
      themeData = darkMode;
    }else {
      themeData = lightMode;
    }
  }
}
