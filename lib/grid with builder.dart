import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: gird_buider()));
// }

class gird_buider extends StatelessWidget {
  var image = [
    'assets/images/apple.png',
    'assets/images/avocado.png',
    'assets/images/blackberry.png',
    'assets/images/papaya.png',
    'assets/images/pineapple.png',
    'assets/images/strawberry.png',
    'assets/images/watemelon.png'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(shadowColor:Colors.red,
              child: Image.asset(image[index]),
            );
          },
        itemCount: image.length,
          ),
    );
  }
}
