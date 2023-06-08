import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:izipizi_shop/blocs/wishlist/wishlist_bloc.dart';
import 'package:izipizi_shop/config/theme.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({
    super.key,
    required this.product,
  });

  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => ProductScreen(product: product),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    bool checkValue = true;

    return Scaffold(
      appBar: CustomAppBar(isMainAppBar: false, title: product.name),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                InformationProductPic(
                  mediaSize: mediaSize,
                  product: product,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${product.price}',
                      style: AppTextStyles.h1Title
                          .copyWith(color: AppColors.blue, fontSize: 24.0),
                    ),
                    IconButton(
                      onPressed: () {
                        context
                            .read<WishlistBloc>()
                            .add(AddWishlistProduct(product: product));
                        final snakbarAddProduct = SnackBar(
                          content: Text('Продукт додан до обранного'),
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snakbarAddProduct);
                      },
                      icon: product.isFavorite
                          ? SvgPicture.asset('assets/svg/heart_fill_icon.svg')
                          : SvgPicture.asset(
                              'assets/svg/heart_outline_icon.svg'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  product.name,
                  style: AppTextStyles.h1Title,
                ),
                if (product.reviewCount < 3)
                  const SizedBox(
                    height: 16.0,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        StarProductRate(
                          rate: product.reviewRate,
                        ),
                        product.reviewCount >= 3
                            ? TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                    '/product-reviews',
                                    arguments: product,
                                  );
                                },
                                child: Text(
                                  '${product.reviewCount} відгуків',
                                  style: AppTextStyles.h4Title.copyWith(
                                      color: AppColors.blue,
                                      decoration: TextDecoration.underline),
                                ),
                              )
                            : Row(
                                children: [
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    '${product.reviewCount} відгуків',
                                    style: AppTextStyles.h4Title.copyWith(
                                      color: AppColors.blue,
                                    ),
                                  ),
                                ],
                              ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Купили понад',
                        style: AppTextStyles.h4Title.copyWith(
                          color: AppColors.grayDark,
                        ),
                        children: [
                          TextSpan(
                            text: ' ${product.buyCount} ',
                            style: AppTextStyles.h4Title.copyWith(
                              color: AppColors.blue,
                            ),
                          ),
                          TextSpan(
                            text: 'разів',
                            style: AppTextStyles.h4Title.copyWith(
                              color: AppColors.grayDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (product.reviewCount < 3)
                  const SizedBox(
                    height: 8.0,
                  ),
                const Divider(),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(color: AppColors.gray),
                    ),
                    width: double.infinity,
                    child: TabBar(
                      labelColor: AppColors.white,
                      unselectedLabelColor: AppColors.gray,
                      labelStyle:
                          const TextStyle(overflow: TextOverflow.ellipsis),
                      unselectedLabelStyle:
                          const TextStyle(overflow: TextOverflow.ellipsis),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: AppColors.black),
                      tabs: [
                        const SizedBox(
                          height: 40.0,
                          child: Tab(
                            text: 'Відгуки',
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                          child: Tab(
                            text: 'Сумісність',
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                          child: Tab(
                            text: 'Доставка і оплата',
                          ),
                        ),
                      ],
                    ),
                  ),
                  AutoScaleTabBarView(
                    children: [
                      ProductReviews(product: product),
                      const ProductInstalation(),
                      const ProductDelivery(),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ProductBottomBar(product: product),
    );
  }
}
