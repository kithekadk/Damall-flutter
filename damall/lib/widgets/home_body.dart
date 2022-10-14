import 'package:damall/widgets/all_products.dart';
import 'package:damall/widgets/category.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 10),
        Text(
          'Categories',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Category(),
        Text('Products',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        AllProducts()
      ],
    );
  }
}
