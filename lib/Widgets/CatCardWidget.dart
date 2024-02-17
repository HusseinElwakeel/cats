import 'package:cats/Models/CatsModel.dart';
import 'package:flutter/material.dart';

class CatCardWidget extends StatelessWidget {
  const CatCardWidget({super.key, required this.cats});
  final CatsModel cats;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            cats.catImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Text(cats.catName),
        ],
      ),
    );
  }
}
