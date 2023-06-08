import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/models.dart';

class ProductAchivesFlags extends StatelessWidget {
  const ProductAchivesFlags({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 4.0,
        ),
        if (product.isDiscount)
          Padding(
            padding: const EdgeInsets.only(
              top: 4.0,
              left: 8.0,
            ),
            child: SvgPicture.asset('assets/svg/isDiscount_icon.svg'),
          ),
        if (product.isNew)
          Padding(
            padding: const EdgeInsets.only(
              top: 4.0,
              left: 8.0,
            ),
            child: SvgPicture.asset('assets/svg/isNew_icon.svg'),
          ),
        if (product.isRecomended)
          Padding(
            padding: const EdgeInsets.only(
              top: 4.0,
              left: 8.0,
            ),
            child: SvgPicture.asset('assets/svg/isRecomended_icon.svg'),
          ),
      ],
    );
  }
}
