import 'package:flutter/material.dart';
import 'package:fur_ball/core/constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.accentColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/logo/logo.png',
            width: double.infinity, // Specify the desired width
            height: 120, // Specify the desired height
          ),
        ),
      ),
    );
  }
}
