import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import '../models/categories_model.dart';
import '../models/slide_product_model.dart';
import '../widgets/featured_slides.dart';
import '../widgets/product_card.dart';
import '../widgets/textfield_with_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Text(
              //   "New & Noteworthy",
              //   style: kMediumHeadingStyle,
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              const TextWithFilter(),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 48,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    var singleCategory = categoriesList[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            singleCategory.icon,
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              singleCategory.label,
                              style: const TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 200,
                child: Swiper(
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    var singleSlideProduct = sliderProductList[index];
                    return FeaturedSlides(
                      title: singleSlideProduct.title,
                      price: singleSlideProduct.price,
                      slideImagePath: singleSlideProduct.imagePath,
                    );
                  }),
                  viewportFraction: 1,
                  scale: 0.95,
                  pagination: const SwiperPagination(
                      margin: EdgeInsets.all(17),
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        size: 6,
                        color: Colors.white38,
                        activeColor: Colors.white,
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Featured products",
                    style: kMediumHeadingStyle,
                  ),
                  TextButton(
                    child: const Text(
                      "view all",
                      //style: TextStyle(color: Colors.grey),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      slideImagePath: sliderProductList[3].imagePath,
                      title: sliderProductList[3].title,
                      price: sliderProductList[3].price,
                    ),
                  ),
                  Expanded(
                    child: ProductCard(
                      slideImagePath: sliderProductList[4].imagePath,
                      title: sliderProductList[4].title,
                      price: sliderProductList[4].price,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
