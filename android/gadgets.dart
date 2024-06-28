import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to cart page
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          ProductCard(
            productName: 'Laptops',
            productPrice: '₹57,000',
            productImage: 'assets/images/laptop.jpg ',

          ),
          ProductCard(
            productName: 'Mobile',
            productPrice: '₹30,000',
            productImage: 'assets/images/mobile.jpg',

          ),
          ProductCard(
            productName: 'Bluetooth',
            productPrice: '₹10,000',
            productImage: 'assets/images/bluetooth.jpg',
          ),
          ProductCard(
            productName: 'HeadPhones',
            productPrice: '₹1,700',
            productImage: 'assets/images/headphones.jpg',
          ),
          ProductCard(
            productName: 'Smart Watches ',
            productPrice: '₹30,000',
            productImage: 'assets/images/smartwatch.jpg',
          ),
          // Add more products here
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;

  ProductCard({required this.productName, required this.productPrice, required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          Image.asset(productImage),
          Text(productName),
          Text(productPrice),
          ElevatedButton(
            child: Text('Add to Cart'),
            onPressed: () {
              // Add product to cart
            },
          ),
        ],
      ),
    );
  }
}