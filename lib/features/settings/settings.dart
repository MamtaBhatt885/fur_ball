import 'package:flutter/material.dart';
import 'package:fur_ball/core/constants/app_strings.dart';
import 'package:fur_ball/settings/reusable_card.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
        ReusableCard(text: AppStrings.editProfile),
        ReusableCard(text: AppStrings.notifications),
        ReusableCard(text: AppStrings.changePassword),
        ReusableCard(text: AppStrings.logout),

        ],
      )
    );
  }
}
