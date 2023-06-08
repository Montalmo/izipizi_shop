import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/models.dart';
import '../config/theme.dart';

class StarProductRate extends StatelessWidget {
  const StarProductRate({
    super.key,
    required this.rate,
  });

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        rate >= 1
            ? SvgPicture.asset('assets/svg/star_full.svg')
            : SvgPicture.asset('assets/svg/star_empty.svg'),
        const SizedBox(
          width: 4.0,
        ),
        rate >= 2
            ? SvgPicture.asset('assets/svg/star_full.svg')
            : SvgPicture.asset('assets/svg/star_empty.svg'),
        const SizedBox(
          width: 4.0,
        ),
        rate >= 3
            ? SvgPicture.asset('assets/svg/star_full.svg')
            : SvgPicture.asset('assets/svg/star_empty.svg'),
        const SizedBox(
          width: 4.0,
        ),
        rate >= 4
            ? SvgPicture.asset('assets/svg/star_full.svg')
            : SvgPicture.asset('assets/svg/star_empty.svg'),
        const SizedBox(
          width: 4.0,
        ),
        rate >= 5
            ? SvgPicture.asset('assets/svg/star_full.svg')
            : SvgPicture.asset('assets/svg/star_empty.svg'),
        const SizedBox(
          width: 4.0,
        ),
      ],
    );
  }
}
