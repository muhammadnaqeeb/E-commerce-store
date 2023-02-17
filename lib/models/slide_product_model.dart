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
    imagePath: "assets/images/laptop.jpg",
    title: "Furniture",
    price: 600,
  ),
  SliderProductModel(
    imagePath: "assets/images/laptop.jpg",
    title: "Laptops",
    price: 500,
  ),
  SliderProductModel(
    imagePath: "assets/images/laptop.jpg",
    title: "Mobile",
    price: 400,
  ),
];
