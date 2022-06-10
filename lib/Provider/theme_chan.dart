import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Theme_Changer with ChangeNotifier{
  var _themeMode = ThemeMode.light;

  ThemeMode get thememode => _themeMode;

  void setTheme(themeMode){
    _themeMode = themeMode;
    notifyListeners();  
  }

}
