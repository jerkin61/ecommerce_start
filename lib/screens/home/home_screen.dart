import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_start/models/category_model.dart';
import 'package:ecommerce_start/models/models.dart';
import 'package:ecommerce_start/widget/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Kris | Ever'),
      bottomNavigationBar: CustomerNavVar(),
      body: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map((category) => HeroCarouselCard(category: category))
                  .toList(),
            ),
          ),
          SectionTitle(title: 'RECOMMENDED'),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList()),
          SectionTitle(title: 'MOST POPULAR'),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList()),
        ],
      ),
    );
  }
}
