import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.url, required this.size});
  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
          url,
          fit: BoxFit.cover,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
