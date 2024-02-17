import 'package:cats/Models/CatsDetailsModel.dart';
import 'package:flutter/material.dart';

class DetailsCatsScreen extends StatelessWidget {
  const DetailsCatsScreen({super.key, required this.ncat});
  final CatsDetailsModel  ncat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text(ncat.name),),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.network(ncat.imageLink,
              ),
            ),
            Text("data",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text("Origin : ${ncat.origin}"),
            Text("Max Weight : ${ncat.minWeight}"),
            Text("Min Weight : ${ncat.minWeight}"),
            Text("Length : ${ncat.length}"),
            Text("Intelligence : ${ncat.intelligence}"),

          ],
        ),
    );
  }
}
