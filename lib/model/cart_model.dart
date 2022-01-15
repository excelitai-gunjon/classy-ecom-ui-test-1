class CartModel{
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
      imageUrl: "images/ecom/men/jeans/j5.jpg",
      productName: "Product 5",
      productPrice: "23523",
      count: 1,
    ),
    CartModel(
      imageUrl: "images/ecom/men/jeans/j3.jpg",
      productName: "Product 1",
      productPrice: "23523",
      count: 1,
    ),
    CartModel(
      imageUrl: "images/ecom/men/jeans/j4.jpg",
      productName: "Product 1",
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

}