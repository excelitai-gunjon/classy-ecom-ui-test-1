import 'package:flutter/cupertino.dart';

class AppBarController with ChangeNotifier{
  bool appBar=true;
  void setAppBar(bool bool){
    appBar=bool;
    notifyListeners();
  }
}