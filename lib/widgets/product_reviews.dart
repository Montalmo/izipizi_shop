import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/widgets.dart';
import '../config/theme.dart';
import '../models/models.dart';

class ProductReviews extends StatelessWidget {
  final Product product;

  const ProductReviews({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final allReviews = Review.heroReview
        .where((element) => element.id == product.productId)
        .toList();
    final List<Review> currentReviews = allReviews.take(3).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 4.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  'Відгуки',
                  style: AppTextStyles.h2Title,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  '${product.reviewCount}',
                  style: AppTextStyles.h4Body.copyWith(
                    color: AppColors.grayDark,
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                StarProductRate(rate: product.reviewRate),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/priperties_icon.svg'),
            ),
          ],
        ),
        currentReviews.isNotEmpty
            ? ProductReview(
                review: currentReviews[0],
              )
            : const Padding(
                padding: EdgeInsets.only(bottom: 24.0),
                child: Text(
                  'На даний момент на даний товар не мае жоного відгуку',
                  style: AppTextStyles.h3Body,
                ),
              ),
        if (currentReviews.length > 1)
          Container(
            color: AppColors.grayBg,
            height: 8.0,
            width: double.infinity,
          ),
        if (currentReviews.length > 1) ProductReview(review: currentReviews[1]),
        if (currentReviews.length > 2)
          Container(
            color: AppColors.grayBg,
            height: 8.0,
            width: double.infinity,
          ),
        if (currentReviews.length > 2) ProductReview(review: currentReviews[2]),
        if (currentReviews.length == 3)
          const SizedBox(
            height: 24.0,
          ),
        if (allReviews.length > 3)
          AdditionalButton(
            onPressCallback: () {
              Navigator.of(context).pushNamed(
                '/product-reviews',
                arguments: product,
              );
            },
            title: 'Дивитись усі відгуки',
          ),
      ],
    );
  }
}


