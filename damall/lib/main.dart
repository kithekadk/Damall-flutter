import 'package:damall/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Products())],
      child: MaterialApp(
        title: 'Da-mall app',
        theme: ThemeData(
            primaryColor: Colors.teal,
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
        home: const HomePage(),
      ),
    );
  }
}
