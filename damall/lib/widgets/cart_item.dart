import 'package:damall/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProduct extends StatelessWidget {
  final String id;
  final String productid;
  final String name;
  final int quantity;
  final double price;

  const CartProduct(
      {required this.id,
      required this.productid,
      required this.name,
      required this.quantity,
      required this.price,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(color: Colors.red),
      onDismissed: (direction) {
        Provider.of<Cart>(context).removeSingleItem(productid);
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              child: Text('\$ $price'),
            ),
          ),
          title: Text(name),
          subtitle: Text('Total:\$${(price * quantity)}'),
          trailing: Text('Quantity: $quantity'),
        ),
      ),
    );
  }
}
