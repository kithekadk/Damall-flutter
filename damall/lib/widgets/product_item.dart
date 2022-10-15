import 'package:flutter/material.dart';
import '../models/products.dart';
import 'package:provider/provider.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final String imageurl;

  const ProductItem({required this.name, required this.imageurl, super.key});
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailPage.routeName, arguments: product.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          footer: GridTileBar(
            title: Text(name),
            trailing: const IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: null,
            ),
            backgroundColor: Colors.black87,
          ),
          child: Image.network(imageurl),
        ),
      ),
    );
  }
}
