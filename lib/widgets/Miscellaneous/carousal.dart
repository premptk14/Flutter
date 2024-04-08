import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousal extends StatelessWidget {
  const Carousal({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [
        Container(
          color: Colors.red,
          child: const Center(
            child: Text(
              'Carousel Item 1',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          child: const Center(
            child: Text(
              'Carousel Item 2',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: const Center(
            child: Text(
              'Carousel Item 3',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
