import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(seconds: 2),
          viewportFraction: 1,
          enlargeCenterPage: true,
          height: 150.0),
      items: modelCarousel.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                height: 10,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.asset(
                  i.toString(),
                  fit: BoxFit.cover,
                ));
          },
        );
      }).toList(),
    );
  }

  List<dynamic> modelCarousel = [
    "assets/images/waters.jpeg",
    "assets/images/beer.jpeg",
    "assets/images/stings.jpeg"
  ];
}
