import 'package:flutter/material.dart';

class Page_1_logic extends ChangeNotifier {
  bool is_switched = false;

 bool toogle_switch(newValue) {
  is_switched = newValue;
  notifyListeners();
  return is_switched;
   
  }

}






                    //  or provider ke zariyea mene us ki logic likhi he ab jab b me kisi ak button ko on off karta hu to uske behalf pe dusra button khud on of ho raha he 