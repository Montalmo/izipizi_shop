import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/theme.dart';

class ProductInstalation extends StatelessWidget {
  const ProductInstalation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 16.0,
        ),
        const Text(
          'Сумісність',
          style: AppTextStyles.h2Title,
        ),
        const SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            SvgPicture.asset('assets/svg/apple_alt.svg'),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'IPhone 14, 13, 12, 11, Xs, Xr',
              style: AppTextStyles.h3Title,
            )
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          'Посуньте та утримуйте пристрій ZIPIZI.WORLD горизонтально біля самого верху iPhone Якщо це не працює, заблокуйте  телефон, потім розблокуйте його та повторіть спробу.',
          style: AppTextStyles.h3Body,
        ),
        const SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            SvgPicture.asset('assets/svg/apple_alt.svg'),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'IPhone 14, 13, 12, 11, Xs, Xr',
              style: AppTextStyles.h3Title,
            )
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          'відкрийте центр керування Iphone; переконайтеся, що режим польоту вимкненожувімкніть NFC; якщо не спрацювало див. спосіб 2 або 3.',
          style: AppTextStyles.h3Body,
        ),
        const SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            SvgPicture.asset('assets/svg/android_line.svg'),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'Кожен Android із NFC (майже всі)',
              style: AppTextStyles.h3Title,
            )
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          'Проведіть пристрій IZIPIZI.WORLD навколо  центральної задньої частини телефону. Кожен Android має дещо інше місце для свого  пристрою зчитування NFC, але зазвичай воно знаходиться поблизу центру.',
          style: AppTextStyles.h3Body,
        ),
      ],
    );
  }
}
