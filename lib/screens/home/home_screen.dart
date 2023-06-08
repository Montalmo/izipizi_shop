import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: CustomAppBar(isMainAppBar: true),
      bottomNavigationBar: CustomNavigationBar(
        activePage: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.94,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: Category.categories
                    .map((e) => HeroCarouselCard(category: e))
                    .toList(),
              ),
            ),
            const SectionTitle(
              title: 'Рекомендовані',
            ),
            const SizedBox(
              height: 16.0,
            ),
            ProductCarousel(
              products: Product.heroProducts
                  .where((product) => product.isRecomended == true)
                  .toList(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: SectionTitle(
                title: 'Новінки',
              ),
            ),
            ProductCarousel(
              products: Product.heroProducts
                  .where((product) => product.isNew == true)
                  .toList(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: SectionTitle(
                title: 'Розпродаж',
              ),
            ),
            ProductCarousel(
              products: Product.heroProducts
                  .where((product) => product.isDiscount == true)
                  .toList(),
            ),
            const SizedBox(
              height: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}
