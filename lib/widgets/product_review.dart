import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/widgets.dart';
import '../config/theme.dart';
import '../models/models.dart';

class ProductReview extends StatelessWidget {
  final Review review;

  const ProductReview({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 24.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.gray,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/svg/user_ava_def.svg',
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${review.customer.secondName} ${review.customer.firstName}',
                      style: AppTextStyles.h3Title,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    StarProductRate(rate: review.reviewRate),
                  ],
                ),
              ],
            ),
            Text(
              review.date,
              style: AppTextStyles.h4Body.copyWith(color: AppColors.grayDark),
            ),
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        Text(
          review.reviewBody,
          style: AppTextStyles.h3Body.copyWith(),
        ),
        const SizedBox(
          height: 24.0,
        ),
      ],
    );
  }
}