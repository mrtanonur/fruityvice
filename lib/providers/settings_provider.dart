import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  bool isDark = false;

  void change(bool value) {
    isDark = value;
    notifyListeners();
  }
}
