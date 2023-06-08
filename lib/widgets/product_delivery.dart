import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/theme.dart';

class ProductDelivery extends StatelessWidget {
  const ProductDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 16.0,
        ),
        const Text(
          'Доставка і оплата',
          style: AppTextStyles.h2Title,
        ),
        const SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            SvgPicture.asset('assets/svg/carbon_delivery.svg'),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'Доставка',
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
            SvgPicture.asset('assets/svg/fluent_payment.svg'),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'Оплата',
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
            SvgPicture.asset('assets/svg/crisis_alert.svg'),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'Гарантія',
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
      ],
    );
  }
}
