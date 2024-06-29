
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithText extends StatefulWidget {
  @override
  _CarouselWithTextState createState() => _CarouselWithTextState();
}

class _CarouselWithTextState extends State<CarouselWithText> {
  final List<Map<String, String>> _carouselItems = [
    {'image': 'assets/carousel_slider/cat1.jpg', 'text': 'Welcome to Furball'},
    {'image': 'assets/carousel_slider/parrot.jpg', 'text': 'Welcome to Furball'},
    {'image': 'assets/carousel_slider/dog.jpg', 'text': 'Welcome to Furball'},
    {'image': 'assets/carousel_slider/pig.jpg', 'text': 'Welcome to Furball'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider.builder(
          itemCount: _carouselItems.length,
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            aspectRatio: 16 / 9,
            initialPage: 0,
          ),
          itemBuilder: (context, index, realIdx) {
            final image = _carouselItems[index]['image'] ?? '';
            final text = _carouselItems[index]['text'] ?? '';

            return Column(
              children: [
                Expanded(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}