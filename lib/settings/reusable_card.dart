import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';




class ReusableCard extends StatelessWidget {
final String text;
  const ReusableCard({required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: AppColors.secondary
        ),
        height: 60,
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(text,style: TextStyle(fontSize: 32,color:
              AppColors.accentColor),),
            ]

        ),
      ),
    );
  }
}
