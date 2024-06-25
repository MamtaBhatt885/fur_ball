import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';


class ReusableContainer extends StatelessWidget {
  const ReusableContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: AppColors.tertary
        ),
        height: 250,
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/home_page/carousel_slider/dog1.jpg",height: 200,),

              ),
              Text("Gayatri",style: TextStyle(fontSize: 24,color:
              AppColors.accentColor),),
            ]

        ),
      ),
    );
  }
}
