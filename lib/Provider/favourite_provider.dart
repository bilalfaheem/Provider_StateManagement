import 'package:flutter/foundation.dart';

class Favourite_Provider with ChangeNotifier{

  List<int> _Fav_List= [];
  List<int> get Fav_List => _Fav_List ;

  void addItem(int value){
    _Fav_List.add(value);
    notifyListeners();
  }

  void removeItem(int value){
    _Fav_List.remove(value);
    notifyListeners();
  }

}