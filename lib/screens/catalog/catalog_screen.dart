import 'package:flutter/material.dart';
import 'package:izipizi_shop/models/category_model.dart';

import '../../models/product_model.dart';
import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;

  const CatalogScreen({
    super.key,
    required this.category,
  });

  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(category: category),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryList = Product.heroProducts
        .where(
          (product) => product.caterory == category.name,
        )
        .toList();

    return Scaffold(
      appBar: CustomAppBar(isMainAppBar: false, title: category.name),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          crossAxisCount: 2,
          childAspectRatio: .725,
        ),
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return ProducrCard(
            product: categoryList[index],
          );
        },
      ),
      bottomNavigationBar: CustomNavigationBar(
        activePage: 3,
      ),
    );
  }
}
