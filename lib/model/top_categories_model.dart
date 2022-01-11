class TopCategoriModel{
  String? categoriName;
  String? imagePath;

  TopCategoriModel({this.categoriName,this.imagePath});
  static List<TopCategoriModel> list=[
    TopCategoriModel(
      categoriName: "Popular",
      imagePath: "images/popular.png"
    ),
    TopCategoriModel(
        categoriName: "Electronics",
        imagePath: "images/phone.png"
    ),
    TopCategoriModel(
        categoriName: "Fashion",
        imagePath: "images/fashion.png"
    ),
    TopCategoriModel(
        categoriName: "Bikes",
        imagePath: "images/bike.png"
    ),
    TopCategoriModel(
        categoriName: "Food",
        imagePath: "images/food.png"
    ),
    TopCategoriModel(
        categoriName: "Popular",
        imagePath: "images/popular.png"
    ),
  ];
}