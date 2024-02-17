import 'package:cats/Models/CatsModel.dart';
import 'package:cats/Widgets/CatCardWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  List<CatsModel> cat = [
    CatsModel(catImage: "https://th.bing.com/th/id/R.53cdeef8c630108192b4d04923d23339?rik=nWcdq9wvtDw%2f6A&pid=ImgRaw&r=0", catName: "cat one"),
  ];
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
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          ListView.builder(
            itemCount: cat.length,
            itemBuilder: (context, index) => CatCardWidget(cats: cat[index]),),
        ],
      ),
    );
  }
}
