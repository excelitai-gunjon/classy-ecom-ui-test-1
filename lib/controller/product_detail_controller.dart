import 'package:flutter/cupertino.dart';

class ProductDetailController with ChangeNotifier{
  int selection=1;

  void selected(int value){
    selection=value;
    notifyListeners();
  }
}