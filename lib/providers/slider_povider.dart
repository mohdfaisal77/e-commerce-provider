import 'package:flutter/cupertino.dart';

class SliderProvider with ChangeNotifier{
  double _startValue = 20.0;
  double _endValue = 90.0;

   double get startValue => _startValue;

   void setStartValue(double start){
     _startValue = start;
     notifyListeners();
   }

  double get endValue => _endValue;

  void setEndValue(double end){
    _endValue = end;
    notifyListeners();
  }
}