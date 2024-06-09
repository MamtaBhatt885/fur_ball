

import 'package:flutter/material.dart';
import 'package:fur_ball/core/constants/app_colors.dart';
import 'package:fur_ball/features/bottom_nav_bar/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Image.asset(
            'assets/logo/logo.png',
            width: double.infinity, // Specify the desired width
            height: 120, // Specify the desired height
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
