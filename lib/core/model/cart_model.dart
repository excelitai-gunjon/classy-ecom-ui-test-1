import 'package:flutter/cupertino.dart';

class CartModel with ChangeNotifier{
  String? imageUrl;
  String? productName;
  String? productPrice;
  int? count;
  CartModel({this.imageUrl,this.productName,this.productPrice,this.count});

  static List<CartModel> list=[
    CartModel(
      imageUrl: "images/ecom/men/jeans/j1.jpg",
      productName: "Product 1",
      productPrice: "23523",
      count: 1,
    ),
    CartModel(
      imageUrl: "images/ecom/men/jeans/j2.jpg",
      productName: "Product 2",
      productPrice: "23523",
      count: 1,

    ),
    CartModel(
      imageUrl: "images/ecom/men/jeans/j6.jpg",
      productName: "Product 1",
      productPrice: "23523",
      count: 1,
    ),
  ];
  int? getcount(int index){
    return list[index].count;
  }
  void addCount(int index){
    list[index].count=list[index].count!.toInt()+1;
    notifyListeners();
  }

  void subCount(int index){
    list[index].count=list[index].count!.toInt()-1;
    notifyListeners();
  }
  void deleteList(int index){
    list.removeAt(index);
    notifyListeners();
  }
  void addCartList(){
    list.add(CartModel(
      imageUrl: "images/ecom/men/jeans/j6.jpg",
      productName: "Product 1",
      productPrice: "23523",
      count: 1,
    ),);
    notifyListeners();
  }

}