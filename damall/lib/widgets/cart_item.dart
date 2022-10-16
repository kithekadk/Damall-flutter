import 'package:flutter/material.dart';

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
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: FittedBox(
            child: Text('\$ $price'),
          ),
        ),
        title: Text(name),
        subtitle: Text('Total:\$${(price * quantity)}'),
        trailing: Text('x \$quantity'),
      ),
    );
  }
}
