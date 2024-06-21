import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeImageSlider extends StatefulWidget {
  const HomeImageSlider({
    super.key,
  });

  @override
  State<HomeImageSlider> createState() => _HomeImageSliderState();
}

class _HomeImageSliderState extends State<HomeImageSlider> {
  final List<Widget> items = [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
            fit: BoxFit.cover,
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqGK3diR3Zi-mnOXEaj-3ewmFyRYVxGzVzZw&s'),
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
          fit: BoxFit.cover,
          'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
            fit: BoxFit.cover,
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4WmAlrjjUTOOYs35vGliGHYUdtUkXyQ-t9cyThMmGX0Uh4gtmZ0lkJE8ixZIRSSmgJzI&usqp=CAU'),
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
          fit: BoxFit.cover,
          'https://t3.ftcdn.net/jpg/05/85/86/44/360_F_585864419_kgIYUcDQ0yiLOCo1aRjeu7kRxndcoitz.jpg'),
    ),
  ];
  int getCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CarouselSlider.builder(
            itemBuilder: (context, index, realIndex) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() => getCurrentIndex = index);
              });

              return items[index];
            },
            disableGesture: false,
            options: CarouselOptions(
              autoPlay: true,
            ),
            itemCount: items.length,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: DotsIndicator(
              dotsCount: items.length,
              position: getCurrentIndex,
              decorator: DotsDecorator(
                activeColor: Colors.white,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}