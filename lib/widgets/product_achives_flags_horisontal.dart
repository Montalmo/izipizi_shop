import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/models.dart';

class ProductAchivesFlagsHorisontal extends StatelessWidget {
  const ProductAchivesFlagsHorisontal({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (product.isDiscount)
          Padding(
            padding: const EdgeInsets.only(
              right: 4.0,
            ),
            child: SvgPicture.asset('assets/svg/isDiscount_icon.svg'),
          ),
        if (product.isNew)
          Padding(
            padding: const EdgeInsets.only(
              right: 4.0,
            ),
            child: SvgPicture.asset('assets/svg/isNew_icon.svg'),
          ),
        if (product.isRecomended)
          Padding(
            padding: const EdgeInsets.only(
              right: 4.0,
            ),
            child:
                SvgPicture.asset('assets/svg/isRecomended_icon.svg'),
          ),
      ],
    );
  }
}

