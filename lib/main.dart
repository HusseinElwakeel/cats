import 'package:cats/Constant/ListOfCats.dart';
import 'package:cats/Data/cats.dart';
import 'package:cats/Models/CatsDetailsModel.dart';
import 'package:cats/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

final cats = allCats
    .map<CatsDetailsModel>((jsonCat) => CatsDetailsModel.fromJson(jsonCat))
    .toList();
void main() {
  // final cats2 = <CatsDetailsModel>[];
  // for(var cat in allCats){
  //   cats2.add(CatsDetailsModel.fromJson(cat));
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}
