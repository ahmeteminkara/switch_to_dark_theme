import 'package:flutter/material.dart';


class ThemeChanger extends ChangeNotifier {

  ThemeData _themeData;

  ThemeChanger(this._themeData);

  get getTheme => _themeData;

  setTheme(ThemeData theme){
    _themeData=theme;
    notifyListeners();
  }

}