

import 'package:flutter/material.dart';
import 'package:fur_ball/core/constants/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page =0;

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
        onTap: (index){
          setState(() {
_page = index;
          });
        },
      ),
      body: Center(
        child: Text(_page.toString(),
        style: const TextStyle(
          fontSize: 300,
          fontWeight: FontWeight.w400
        ),),
      ),
    );
  }
}
