import 'package:cats/Constant/ListOfCats.dart';
import 'package:cats/Data/cats.dart';
import 'package:cats/Models/CatsModel.dart';
import 'package:cats/Screens/DetailsCatsScreen.dart';
import 'package:cats/main.dart';
import 'package:flutter/material.dart';

class CatCardWidget extends StatelessWidget {
  const CatCardWidget({super.key,required this.catImage,required this.catName});
  final String catName;
  final String catImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsCatsScreen(ncat: cats[0],),
            ));
      },
      child: Card(
        child: Column(
          children: [
            Expanded(child: Image.network(catImage)),
            Text(catName),
          ],
        ),
      ),
    );
  }
}
