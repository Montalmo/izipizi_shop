import 'package:flutter/material.dart';

import '../models/models.dart';
import '../widgets/widgets.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;

  const ProductCarousel({
    super.key, required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 248.0,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ProducrCard(product: products[index],),
            );
          },),
    );
  }
}
