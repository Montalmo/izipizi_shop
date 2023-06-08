import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:izipizi_shop/blocs/wishlist/wishlist_bloc.dart';
import 'package:izipizi_shop/config/app_router.dart';
import 'package:izipizi_shop/config/theme.dart';
import 'package:izipizi_shop/models/models.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const IzipiziShopApp());
}

class IzipiziShopApp extends StatelessWidget {
  const IzipiziShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WishlistBloc()
            ..add(
              WishlistStart(
                wishlist: Wishlist(products: [
                  Product(
                    productId: 3,
                    name: 'Стікер “ЗСУ”',
                    caterory: 'Стікери',
                    imageUri: 'assets/images/brelok_ukr_my_house_02.png',
                    price: 249,
                    reviewCount: 0,
                    reviewRate: 0,
                    buyCount: 38,
                    isRecomended: true,
                    isNew: true,
                    isDiscount: false,
                    haveCustomDesign: true,
                  ),
                  Product(
                    productId: 4,
                    name: 'Стікер “ЗСУ next one”',
                    caterory: 'Стікери',
                    imageUri: 'assets/images/brelok_ukr_my_house_02.png',
                    price: 249,
                    reviewCount: 5,
                    reviewRate: 2,
                    buyCount: 98,
                    isRecomended: false,
                    isNew: true,
                    isDiscount: false,
                    haveCustomDesign: false,
                  ),
                ]),
              ),
            ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeApp(),
        title: 'Izipizi Shop',
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
        home: HomeScreen(),
      ),
    );
  }
}
