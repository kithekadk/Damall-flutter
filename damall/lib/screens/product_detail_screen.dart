import 'package:damall/models/cart.dart';
import 'package:flutter/material.dart';
import '../models/products.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/product-details';
  const DetailPage({super.key});
  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context).findById(productid);
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(loadedProduct.name),
        ),
        body: Column(children: [
          SizedBox(
              height: 300,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.network(loadedProduct.imageurl))),
          Text('Price: \$${loadedProduct.price}',
              style: const TextStyle(fontSize: 40)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(loadedProduct.description),
          )
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () => cart.addItemtoCart(
                loadedProduct.id, loadedProduct.name, loadedProduct.price),
            child: const Icon(Icons.shopping_cart,
                size: 30, color: Colors.black)));
  }
}
