import 'package:flutter/material.dart';

import '../models/models.dart';
import '../config/theme.dart';

class HeroCarouselCard extends StatelessWidget {
  final Category category;

  const HeroCarouselCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(14.0),
            ),
            child: Stack(
              children: [
                Image.network(category.imageUrl,
                    fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16.0),
                    child: Text(
                      category.name,
                      style: AppTextStyles.h2Title.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(
            14.0,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(
              14.0,
            ),
            splashColor: AppColors.blue.withOpacity(.4),
            onTap: () => Navigator.of(context)
                .pushNamed('/catalog', arguments: category),
          ),
        )
      ],
    );
  }
}
