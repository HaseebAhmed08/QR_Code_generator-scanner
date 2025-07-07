import 'package:flutter/material.dart';

class Splash_2_logic extends ChangeNotifier {
  bool isloading = false;
notifyListeners();
  void initializeApp(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/home1_screen');
    notifyListeners();
  }
  
}
