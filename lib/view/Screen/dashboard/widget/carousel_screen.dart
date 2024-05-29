import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDashboard extends StatefulWidget {
  const CarouselDashboard({super.key});

  @override
  State<CarouselDashboard> createState() => _CarouselDashboardState();
}

class _CarouselDashboardState extends State<CarouselDashboard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            padEnds: true,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 2),
            viewportFraction: 2,
            enlargeCenterPage: true,
            clipBehavior: Clip.hardEdge,
            height: 200.0),
        items: modelCarousel.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.asset(
                    i.toString(),
                    fit: BoxFit.fill,
                  ));
            },
          );
        }).toList(),
      ),
    );
  }

  List<dynamic> modelCarousel = [
    "assets/images/warter.jpeg",
    "assets/images/katom.jpeg",
    "assets/images/sting.jpeg"
  ];
}
