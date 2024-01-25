import 'package:flutter/material.dart';

import '../../../domain/models/product.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.product,
    required this.onTap,
  });
  final Product product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.network(product.image),
      title: Text(product.name),
      subtitle: Text('USD ${product.price.toStringAsFixed(2)}'),
    );
  }
}
