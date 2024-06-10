

import 'package:flutter/material.dart';
import 'package:fur_ball/core/constants/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fur_ball/features/settings/settings.dart';

import '../../pets_screen/pet_screen.dart';
import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page =0;
  final PageController _pageController = PageController();

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
      bottomNavigationBar: CurvedNavigationBar(
        height:50,
        backgroundColor: AppColors.whiteColor,
        buttonBackgroundColor: AppColors.primary,
        color: AppColors.primary,
        animationDuration: Duration(milliseconds: 400),
        items:const <Widget> [
        Icon(Icons.home_filled),
          Icon(Icons.pets),
          Icon(Icons.settings),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
        },
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _page = index;
          });
        },
        children: const <Widget>[
          HomeScreen(),
          PetScreen(),
          SettingsPage(),
        ],
      ),
    );
  }
}