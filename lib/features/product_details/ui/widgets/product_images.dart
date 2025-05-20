import 'dart:io';
import 'package:flutter/material.dart';

class ProductImages extends StatelessWidget {
  final List<String> imageUrls;

  const ProductImages({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: imageUrls.map((url) {
        if (url.startsWith('http') || url.startsWith('https')) {
          return Image.network(url);
        } else {
          return Image.file(File(url));
        }
      }).toList(),
    );
  }
}
