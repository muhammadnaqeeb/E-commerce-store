// ignore_for_file: public_member_api_docs, sort_constructors_first
class SliderProductModel {
  String imagePath;
  String title;
  int price;

  SliderProductModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

List<SliderProductModel> SliderProductList = [
  SliderProductModel(
    imagePath: "assets/images/ferniture.jpg",
    title: "Furniture",
    price: 600,
  ),
  SliderProductModel(
    imagePath: "assets/images/cloths.jpg",
    title: "Cloths",
    price: 50,
  ),
  SliderProductModel(
    imagePath: "assets/images/applicence.jpg",
    title: "Appliences",
    price: 400,
  ),
  SliderProductModel(
    imagePath: "assets/images/watch.png",
    title: "Apple Watch",
    price: 100,
  ),
  SliderProductModel(
    imagePath: "assets/images/airpods.png",
    title: "Airpods",
    price: 120,
  ),
];
