import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/widgets.dart';
import '../config/theme.dart';
import '../models/models.dart';

class InformationProductPic extends StatelessWidget {
  const InformationProductPic({
    super.key,
    required this.mediaSize,
    required this.product,
  });

  final Size mediaSize;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: mediaSize.width - 32,
          width: mediaSize.width - 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              14.0,
            ),
            color: AppColors.grayBg,
          ),
        ),
        SizedBox(
          height: mediaSize.width - 80,
          width: mediaSize.width - 80,
          child: Image.asset(
            product.imageUri,
          ),
        ),
        SizedBox(
          height: mediaSize.width - 64,
          width: mediaSize.width - 64,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductAchivesFlagsHorisontal(product: product),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (product.haveCustomDesign)
                    CustomDesignButton(onClickCallback: () {}),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

