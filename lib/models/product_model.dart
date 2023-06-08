import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int productId;
  final String name;
  final String caterory;
  final String imageUri;
  final double price;
  final int reviewCount;
  final int reviewRate;
  final int buyCount;
  final bool isRecomended;
  final bool isNew;
  final bool isDiscount;
  bool isFavorite;
  final bool haveCustomDesign;

  Product({
    required this.productId,
    required this.name,
    required this.caterory,
    required this.imageUri,
    required this.price,
    required this.reviewCount,
    required this.reviewRate,
    required this.buyCount,
    required this.isRecomended,
    required this.isNew,
    required this.isDiscount,
    this.isFavorite = false,
    required this.haveCustomDesign,
  });

  set favorite(bool value) => isFavorite = value;

  @override
  List<Object?> get props => [
        productId,
        name,
        caterory,
        imageUri,
        price,
        reviewCount,
        reviewRate,
        buyCount,
        isRecomended,
        isNew,
        isDiscount,
        haveCustomDesign,
      ];

  static List<Product> heroProducts = [
    Product(
      productId: 1,
      name: 'Брелок “Україна мій дім”',
      caterory: 'Брелокі',
      imageUri: 'assets/images/brelok_ukr_my_house.png',
      price: 500,
      reviewCount: 27,
      reviewRate: 4,
      buyCount: 145,
      isRecomended: true,
      isNew: true,
      isDiscount: true,
      haveCustomDesign: true,
    ),
    Product(
      productId: 2,
      name: 'Брелок “H🇺🇦ME”',
      caterory: 'Брелокі',
      imageUri: 'assets/images/brelok_ukr_my_house_01.png',
      price: 499,
      reviewCount: 27,
      reviewRate: 4,
      buyCount: 12,
      isRecomended: true,
      isNew: true,
      isDiscount: false,
      haveCustomDesign: true,
    ),
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
  ];
}
