// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:damall/widgets/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Damall'),
      ),
      body: ListView(
        children: const [
          SizedBox(height: 10),
          Text(
            'Categories',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Category(),
          Text('Products',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
          // AllProducts()
        ],
      ),
    );
  }
}
