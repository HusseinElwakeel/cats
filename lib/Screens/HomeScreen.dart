import 'package:cats/Constant/ListOfCats.dart';
import 'package:cats/Models/CatsDetailsModel.dart';
import 'package:cats/Models/CatsModel.dart';
import 'package:cats/Widgets/CatCardWidget.dart';
import 'package:cats/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Types Of Cats"),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        ],
      ),
      body:
      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          ),
          itemCount: cats.length,
          itemBuilder: (context, index) {
            final catt = cats[index];
            return CatCardWidget(catImage: catt.imageLink, catName: catt.name);
          },),
      // GridView(
      //   gridDelegate:
      //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   children: [
      //     ListView.builder(
      //       itemCount: cat.length,
      //       itemBuilder: (context, index) => CatCardWidget(cats: cat[index]),
      //     ),
      //   ],
      // ),
    );
  }
}
