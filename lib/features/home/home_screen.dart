import 'package:flutter/material.dart';
import 'package:fur_ball/core/constants/app_colors.dart';
import 'package:fur_ball/features/home/carousel/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Adopt Us",style: TextStyle(color: AppColors.secondary,fontSize: 32),),
            ),
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
)
          ],
        ),
      )
    );
  }
}

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/home_page/carousel_slider/cow.jpg",height: 200,),

          ),
          Text("Gayatri",style: TextStyle(fontSize: 24),),
        ]

      ),
    );
  }
}
