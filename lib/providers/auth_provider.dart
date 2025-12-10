import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String username = "";

  void setUsername(String name) {
    username = name;
    notifyListeners();
  }
}