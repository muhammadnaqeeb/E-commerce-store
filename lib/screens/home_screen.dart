import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import '../models/categories_model.dart';
import '../models/slide_product_model.dart';
import '../widgets/featured_slides.dart';
import '../widgets/textfield_with_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "New & Noteworthy",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextWithFilter(),
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
                  var singleSlideProduct = SliderProductList[index];
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
          ],
        ),
      ),
    );
  }
}
