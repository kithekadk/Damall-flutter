import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imageurl;
  final double price;

  Product(
      {required this.id,
      required this.category,
      required this.name,
      required this.description,
      required this.imageurl,
      required this.price});
}

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: '1',
        category: 'laptop',
        name: 'laptop',
        description: 'hp black slim',
        imageurl:
            'https://media.istockphoto.com/photos/laptop-with-blank-screen-on-white-picture-id479520746?b=1&k=20&m=479520746&s=170667a&w=0&h=BZ3ocGU4Ohrl6UrPdHTqQ0gYDrXNZuh4WEGEJqGgVt4=',
        price: 10000.00),
    Product(
        id: '2',
        category: 'laptop',
        name: 'Computer',
        description: 'hp black slim',
        imageurl:
            'https://media.istockphoto.com/photos/laptop-with-blank-screen-on-white-picture-id479520746?b=1&k=20&m=479520746&s=170667a&w=0&h=BZ3ocGU4Ohrl6UrPdHTqQ0gYDrXNZuh4WEGEJqGgVt4=',
        price: 10000.00),
  ];
  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }
}
