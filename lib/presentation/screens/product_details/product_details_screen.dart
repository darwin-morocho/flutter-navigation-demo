import 'package:flutter/material.dart';

import '../../../domain/models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {},
          child: const Text('Add to cart'),
        ),
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              product.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20).copyWith(bottom: 2),
            child: Text(
              product.name,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20).copyWith(top: 0),
            child: Text(
              'USD ${product.price.toStringAsFixed(2)}',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              product.description,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
