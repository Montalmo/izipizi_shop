import 'package:flutter/material.dart';
import 'package:izipizi_shop/config/theme.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';

class ProductReviewsScreen extends StatelessWidget {
  final Product product;
  const ProductReviewsScreen({
    super.key,
    required this.product,
  });

  static const String routeName = '/product-reviews';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => ProductReviewsScreen(product: product),
    );
  }

  @override
  Widget build(BuildContext context) {
    final allReviews = Review.heroReview
        .where((element) => element.id == product.productId)
        .toList();

    return Scaffold(
      appBar: CustomAppBar(
        isMainAppBar: false,
        title: 'Відгуки ${product.reviewCount}',
        isReviewAppBar: true,
      ),
      bottomNavigationBar: ProductBottomBar(product: product),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: ListView.separated(
          itemBuilder: (context, index) =>
              ProductReview(review: allReviews[index]),
          separatorBuilder: (context, index) => Divider(
            thickness: 8.0,
            color: AppColors.grayBg,
          ),
          itemCount: allReviews.length,
        ),
      ),
    );
  }
}
