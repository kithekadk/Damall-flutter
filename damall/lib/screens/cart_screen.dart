import 'package:damall/models/cart.dart';
import 'package:damall/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Shopping',
          style: TextStyle(fontSize: 30, color: Colors.teal),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: ((context, index) => CartProduct(
                    id: cart.items.values.toList()[index].id,
                    productid: cart.items.keys.toList()[index],
                    name: cart.items.values.toList()[index].name,
                    quantity: cart.items.values.toList()[index].quantity,
                    price: cart.items.values.toList()[index].price,
                  ))),
          FloatingActionButton(
            onPressed: () {},
            child: const Text(
              'CheckOut',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
