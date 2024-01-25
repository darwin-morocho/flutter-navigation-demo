import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/product.dart';
import '../../shared/widgets/avatar.dart';
import '../../shared/widgets/product_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _faker = Faker();

  late final List<Product> _products;

  @override
  void initState() {
    super.initState();
    _products = List.generate(
      200,
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Avatar(
            url: _faker.image.image(keywords: ['avatar']),
            size: 40,
          ),
        ),
      ),
      body: ListView.separated(
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
    );
  }
}
