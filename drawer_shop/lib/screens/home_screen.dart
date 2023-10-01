import 'package:carousel_slider/carousel_slider.dart';
import 'package:drawer_shop/widgets/widget.dart';
import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../models/models.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
static const String routeName = '/';
///////////////route method/////////
static Route route() {
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (_) => HomeScreen(),
    );
}
  @override
  Widget build(BuildContext context) {
     return Scaffold(
///////////////////////App Bar///////////////////////////////
    appBar: CustomAppBar(title: 'Drawer Shop'),
 //////////////////////Bottom Navigation Bar/////////////////    
    bottomNavigationBar: CustomNavBar(),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories.map((category) => HeroCarouselCard(category: category)).toList(),
            ),
          ),
          SectionTitle(title: 'RECOMMENDED'),
          ProductCarousel(
            products: Product.products.where((product) => product.isRecommended).toList()),
          SectionTitle(title: 'MOST POPULAR'),
          ProductCarousel(
            products: Product.products.where((product) => product.isPopular).toList()),  
        ],
      ),
    ));
  }
}

