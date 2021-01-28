import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool visibility = true;

  void changeVisibility() {
    visibility ? visibility = false : visibility = true;
    notifyListeners();
  }
}
