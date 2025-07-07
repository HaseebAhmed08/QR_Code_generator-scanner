import 'package:flutter/material.dart';

class Splash_1_logic extends ChangeNotifier {


  Future<void> initializeApp(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2)); // Optional splash delay
    Navigator.of(context).pushReplacementNamed('/screen2');
  }
}
