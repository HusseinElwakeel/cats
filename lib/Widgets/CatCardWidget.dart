import 'package:cats/Models/CatsModel.dart';
import 'package:cats/Screens/DetailsCatsScreen.dart';
import 'package:flutter/material.dart';

class CatCardWidget extends StatelessWidget {
  const CatCardWidget({super.key, required this.cats});
  final CatsModel cats;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsCatsScreen(),
            ));
      },
      child: Card(
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
      ),
    );
  }
}
