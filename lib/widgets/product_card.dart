import 'package:flutter/material.dart';

import '../models/models.dart';
import '../config/theme.dart';
import '../widgets/widgets.dart';

class ProducrCard extends StatelessWidget {
  final Product product;

  const ProducrCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          height: 248.0,
          width: (MediaQuery.of(context).size.width - 48) / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: AppColors.grayBg),
        ),
        SizedBox(
          height: 248.0,
          width: (MediaQuery.of(context).size.width - 48) / 2,
          child: Column(
            children: [
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: 163.0,
                child: Image.asset(
                  product.imageUri,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                product.price.toString(),
                style: AppTextStyles.h3Title.copyWith(color: AppColors.blue),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                product.name,
                style: AppTextStyles.h4Title.copyWith(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        ProductAchivesFlags(product: product),
        Container(
          height: 248.0,
          width: (MediaQuery.of(context).size.width - 48) / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: AppColors.grayBg),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/product',
                  arguments: product,
                );
              },
              splashColor: AppColors.blue.withOpacity(.4),
              borderRadius: BorderRadius.circular(14.0),
            ),
          ),
        ),
      ],
    );
  }
}
