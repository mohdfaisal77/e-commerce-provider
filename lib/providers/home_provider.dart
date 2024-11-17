import 'package:flutter/material.dart';
class HomeProvider extends ChangeNotifier {
  int _tabIndex = 0;

  int get currentIndex => _tabIndex;


  void changeIndex(int newIndex){
    _tabIndex = newIndex;
    notifyListeners();
  }


}