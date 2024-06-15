import 'package:flutter/material.dart';
import 'package:fur_ball/core/constants/app_colors.dart';

class HomeScreenHeadingText extends StatelessWidget {
 final String  text;
  const HomeScreenHeadingText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:16.0,top: 8),
          child: Text(text,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: AppColors.blackColor),),
        ),
      ],
    );
  }
}
