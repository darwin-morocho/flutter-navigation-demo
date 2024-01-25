import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/product.dart';
import '../../shared/widgets/product_tile.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({super.key});

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  final _faker = Faker();

  late final List<Product> _products;

  @override
  void initState() {
    super.initState();
    _products = List.generate(
      2,
      (index) => Product(
        id: '$index',
        name: _faker.food.dish(),
        description: _faker.lorem.sentence(),
        price: _faker.randomGenerator.integer(100) +
            _faker.randomGenerator.decimal(),
        image: _faker.image.image(
          random: true,
          keywords: ['food'],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final total = _products.fold(
      0.0,
      (prevAmount, product) => prevAmount + product.price,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (_, index) {
                  final product = _products[index];
                  return ProductTile(
                    product: product,
                    onTap: () {},
                  );
                },
                separatorBuilder: (_, __) => const Divider(),
                itemCount: _products.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Seguir comprando'),
                  ),
                  const SizedBox(width: 20),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text(
                      'Pay USD ${total.toStringAsFixed(2)}',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
