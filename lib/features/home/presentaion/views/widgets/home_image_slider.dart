import 'package:carousel_slider/carousel_slider.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeImageSlider extends StatelessWidget {
  HomeImageSlider({
    super.key,
  });
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
          'https://media.springernature.com/lw703/springer-static/image/art%3A10.1038%2F528452a/MediaObjects/41586_2015_Article_BF528452a_Figg_HTML.jpg'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarouselSlider(
        items: items,
        disableGesture: false,
        options: CarouselOptions(
          autoPlay: true,
        ),
      ),
    );
  }
}
