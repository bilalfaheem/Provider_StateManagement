import 'package:flutter/foundation.dart';

class Count_Provider with ChangeNotifier{

  int _count = 0;
  int get count => _count;

  void setCount (){
    _count++;
    notifyListeners();
  }

}