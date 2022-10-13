import 'package:flutter/material.dart';
import './category_card.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryCard(Icon(Icons.book, size: 40), 'Book'),
          CategoryCard(Icon(Icons.computer_sharp, size: 40), 'Laptops'),
          CategoryCard(Icon(Icons.videogame_asset, size: 40), 'Games'),
          CategoryCard(Icon(Icons.video_camera_back, size: 40), 'Movies'),
          CategoryCard(Icon(Icons.watch, size: 40), 'Watches'),
          CategoryCard(Icon(Icons.weekend, size: 40), 'Furniture'),
        ],
      ),
    );
  }
}
