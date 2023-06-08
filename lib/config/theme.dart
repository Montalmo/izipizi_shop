import 'package:flutter/material.dart';

ThemeData themeApp() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.black,
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.black,
    ),
    fontFamily: 'GothemPro',
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    titleSmall: TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
  );
}

abstract class AppStrings {
  static const String fontFamily = 'GothemPro';
}

abstract class AppColors {
  static const Color black = Color.fromRGBO(43, 43, 43, 1);
  static const Color gray = Color.fromRGBO(208, 208, 208, 1);
  static const Color grayDark = Color.fromRGBO(114, 114, 114, 1);
  static const Color grayBg = Color.fromRGBO(0, 0, 0, .03);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color red = Color.fromRGBO(231, 0, 0, 1);
  static const Color blue = Color.fromRGBO(12, 157, 227, 1);
}

abstract class AppGradients {
  static const cyanGradient = LinearGradient(
      end: Alignment.topLeft,
      begin: Alignment.bottomRight,
      colors: [
        Color.fromRGBO(29, 117, 206, 1),
        Color.fromRGBO(4, 179, 239, 1),
        Color.fromRGBO(31, 215, 210, 1),
      ]);
}

abstract class AppTextStyles {
  static const h1Title = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const h2Title = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const h2Boby = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontSize: 17.0,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const buttonTitle = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const h3Title = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const h3Body = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const h4Title = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const h4Body = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
}
