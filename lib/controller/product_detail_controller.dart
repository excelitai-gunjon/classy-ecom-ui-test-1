import 'package:flutter/cupertino.dart';

class ProductDetailController with ChangeNotifier {
  int selection = 1;

  String? productImageUrl;
  String? productName;
  String? productPrice;

  void selected(int value) {
    selection = value;
    notifyListeners();
  }

  void setProductData(
    String productImageUrl,
    String productName,
    String productPrice,
  ){
    this.productImageUrl=productImageUrl;
    this.productName=productName;
    this.productPrice;
    notifyListeners();
  }
}
