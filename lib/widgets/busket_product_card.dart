import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:izipizi_shop/widgets/sq_button.dart';

import '../models/models.dart';
import '../config/theme.dart';

class BusketProductCard extends StatelessWidget {
  const BusketProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.grayBg,
                  ),
                ),
                SizedBox(
                  height: 64.0,
                  width: 64.0,
                  child: Image.asset(product.imageUri),
                )
              ],
            ),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: AppTextStyles.h2Boby,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  '${product.price}',
                  style: AppTextStyles.h2Title.copyWith(color: AppColors.blue),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    SqButton(
                      side: 24.0,
                      borderRadius: 4.0,
                      buttonIcon: Icons.remove,
                      onTapCallBack: () {},
                    ),
                    const SizedBox(
                      width: 32.0,
                      height: 24.0,
                      child: Center(
                        child: Text(
                          '1',
                          style: AppTextStyles.h3Title,
                        ),
                      ),
                    ),
                    SqButton(
                      side: 24.0,
                      borderRadius: 4.0,
                      buttonIcon: Icons.add,
                      onTapCallBack: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/svg/trash_icon.svg'),
        ),
      ],
    );
  }
}
