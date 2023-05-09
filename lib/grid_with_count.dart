import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: gird_count()));
}

class gird_count extends StatelessWidget {
  var image = [
    'assets/images/apple.png',
    'assets/images/avocado.png',
    'assets/images/blackberry.png',
    'assets/images/papaya.png',
    'assets/images/pineapple.png',
    'assets/images/strawberry.png',
    'assets/images/watemelon.png',
    'assets/images/apple.png',
    'assets/images/avocado.png',
    'assets/images/blackberry.png',
    'assets/images/papaya.png',
    'assets/images/pineapple.png',
    'assets/images/strawberry.png',
    'assets/images/watemelon.png',
    'assets/images/blackberry.png',
    'assets/images/papaya.png',
    'assets/images/pineapple.png',
    'assets/images/strawberry.png',
    'assets/images/watemelon.png',
  ];
  var colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.redAccent,
    Colors.indigo,
    Colors.greenAccent,
    Colors.amber,
    Colors.deepOrange,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.redAccent,
    Colors.blue,
    Colors.green,
    Colors.redAccent,
    Colors.indigo,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            children: List.generate(
              15,
              (index) {
                return Card(color: colors[index],
                  child: Image(
                    image: AssetImage(image[index]),
                  ),
                );
              },
            )));
  }
}
