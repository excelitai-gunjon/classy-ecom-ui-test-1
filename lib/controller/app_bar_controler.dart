import 'package:flutter/cupertino.dart';

class PrimaryScreenState with ChangeNotifier{
  bool appBar=true;
  void setPrimaryState(bool bool){
    appBar=bool;
    notifyListeners();
  }
}