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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselWithText(),
            SizedBox(height: 20), // Add spacing between widgets
            HomeScreenHeadingText(text: AppStrings.categories),
            SizedBox(height: 10), // Add spacing between widgets
            Container(
              height: 200, // Ensure proper height
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
            SizedBox(height: 20), // Add spacing between widgets
            HomeScreenHeadingText(text: AppStrings.bestSeller),
            SizedBox(height: 10), // Add spacing between widgets
            Container(
              height: 200, // Ensure proper height
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
            SizedBox(height: 20), // Add spacing between widgets
            HomeScreenHeadingText(text: AppStrings.ourProducts),
            SizedBox(height: 10), // Add spacing between widgets
            Container(
              height: 200, // Ensure proper height
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
            SizedBox(height: 20), // Add spacing between widgets
            HomeScreenHeadingText(text: AppStrings.adoptMe),
            SizedBox(height: 10), // Add spacing between widgets
            Container(
              height: 200, // Ensure proper height
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
            SizedBox(height: 20), // Add spacing between widgets
            HomeScreenHeadingText(text: AppStrings.petCare),
            SizedBox(height: 10), // Add spacing between widgets
            Container(
              height: 200, // Ensure proper height
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
      ),
    );
  }
}
