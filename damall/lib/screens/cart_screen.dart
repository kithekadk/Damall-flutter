import 'package:damall/models/cart.dart';
import 'package:damall/models/orders.dart';
import 'package:damall/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Shopping',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: ((context, index) => CartProduct(
                      id: cart.items.values.toList()[index].id,
                      productid: cart.items.keys.toList()[index],
                      name: cart.items.values.toList()[index].name,
                      quantity: cart.items.values.toList()[index].quantity,
                      price: cart.items.values.toList()[index].price,
                    ))),
          ),
          CheckOutButton(
            cart: cart,
          )
        ],
      ),
    );
  }
}

class CheckOutButton extends StatefulWidget {
  final Cart cart;
  const CheckOutButton({required this.cart, super.key});
  @override
  _CheckOutButtonState createState() => _CheckOutButtonState();
}

class _CheckOutButtonState extends State<CheckOutButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.cart.totalAmount <= 0
          ? null
          : () async {
              await Provider.of<Orders>(context, listen: false).addOrder(
                  widget.cart.items.values.toList(), widget.cart.totalAmount);
              widget.cart.clearCart();
            },
      child: const Text('Checkout'),
    );
  }
}
