import 'package:flutter/material.dart';

class DetailsCatsScreen extends StatelessWidget {
  const DetailsCatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Cat Name"),),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.network("https://th.bing.com/th/id/R.53cdeef8c630108192b4d04923d23339?rik=nWcdq9wvtDw%2f6A&pid=ImgRaw&r=0",
              ),
            ),
            Text("data",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),

          ],
        ),
    );
  }
}
