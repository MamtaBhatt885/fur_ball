import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class CarouselSliderPage extends StatefulWidget {
  @override
  _CarouselSliderPageState createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
  final List<String> imgList = [
    'https://via.placeholder.com/600x400?text=Slide+1',
    'https://via.placeholder.com/600x400?text=Slide+2',
    'https://via.placeholder.com/600x400?text=Slide+3',
    'https://via.placeholder.com/600x400?text=Slide+4',
    'https://via.placeholder.com/600x400?text=Slide+5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Slider Demo"),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: imgList.map((item) => Container(
            child: Center(
                child: Image.network(item, fit: BoxFit.cover, width: 1000)),
          )).toList(),
        ),
      ),
    );
  }
}