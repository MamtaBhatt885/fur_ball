import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fur_ball/core/widgets/reusable_cards/home_screen_card.dart';
import 'package:fur_ball/settings/reusable_card.dart';

class PetScreen extends StatelessWidget {
  const PetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReusableContainer(),
                  ReusableContainer(),
                  ReusableContainer(),
                ],
              ),
            ), SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReusableContainer(),
                  ReusableContainer(),
                  ReusableContainer(),
                ],
              ),
            ), SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReusableContainer(),
                  ReusableContainer(),
                  ReusableContainer(),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
