import 'package:flutter/material.dart';
import 'package:fur_ball/core/constants/app_colors.dart';
import 'package:fur_ball/core/constants/app_strings.dart';
import 'package:fur_ball/core/widgets/reusable_texts/home_screen_heading_text.dart';
import 'package:fur_ball/features/home/carousel/slider.dart';

import '../../core/utils/ui_helpers/app_spacing.dart';
import '../../core/widgets/reusable_cards/home_screen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenHeadingText(text: AppStrings.categories),

            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReusableContainer(),
                    ReusableContainer(),
                    ReusableContainer(),
                  ],
                ),

              ),
            ),
HomeScreenHeadingText(text: AppStrings.bestSeller),

Container(
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
       ReusableContainer(),
        ReusableContainer(),
        ReusableContainer(),
      ],
    ),

  ),
),
            HomeScreenHeadingText(text: AppStrings.ourProducts),

            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReusableContainer(),
                    ReusableContainer(),
                    ReusableContainer(),
                  ],
                ),

              ),
            ),

            HomeScreenHeadingText(text: AppStrings.adoptMe),

            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReusableContainer(),
                    ReusableContainer(),
                    ReusableContainer(),
                  ],
                ),

              ),
            ),
            HomeScreenHeadingText(text: AppStrings.petCare),

            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReusableContainer(),
                    ReusableContainer(),
                    ReusableContainer(),
                  ],
                ),

              ),
            ),



          ],
        ),
      )
    );
  }
}
