import 'package:flutter/material.dart';

import '../config/theme.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class ProductBottomBar extends StatefulWidget {
  const ProductBottomBar({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductBottomBar> createState() => _ProductBottomBarState();
}

class _ProductBottomBarState extends State<ProductBottomBar> {
  bool checkValue = true;
  int producrPcs = 1;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        height: 158,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.product.name,
                    style: AppTextStyles.h2Title,
                  ),
                  Text(
                    '${widget.product.price} грн',
                    style: AppTextStyles.h2Title.copyWith(
                      color: AppColors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 4.0,
                right: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          activeColor: AppColors.blue,
                          splashRadius: 26,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          value: checkValue,
                          onChanged: (value) {
                            setState(() {
                              this.checkValue = value!;
                            });
                          }),
                      const Text(
                        'Додаткова гарантія на 1 рік',
                        style: AppTextStyles.h3Body,
                      )
                    ],
                  ),
                  Text(
                    '+99 грн',
                    style: AppTextStyles.h2Title.copyWith(
                      color: AppColors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SqButton(
                        side: 50.0,
                        borderRadius: 14.0,
                        buttonIcon: Icons.remove,
                        onTapCallBack: () {},
                      ),
                      SizedBox(
                        width: 50.0,
                        height: 50,
                        child: Center(
                          child: Text(
                            '$producrPcs',
                            style: AppTextStyles.h2Title,
                          ),
                        ),
                      ),
                      SqButton(
                        side: 50.0,
                        borderRadius: 14.0,
                        buttonIcon: Icons.add,
                        onTapCallBack: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: MainButton(
                      title: 'Додати у корзину',
                      onClickCallBack: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
