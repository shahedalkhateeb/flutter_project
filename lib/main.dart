import 'package:flutter/material.dart';
import 'Wishlist.dart';
import 'wishlist_details.dart';
import 'full_package_details.dart';
import 'products.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wishlist',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/fullPackage',
      routes: {
        '/wishlist': (context) => const WishlistScreen(),
        '/details': (context) => const DetailsScreen(),
        '/fullPackage': (context) => const FullPackageDetailsScreen(),
        '/snacks': (context) => const SnacksScreen(),
      },
    );
  }
}