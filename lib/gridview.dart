import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: girdview()));
}

class girdview extends StatelessWidget {
  var name = ['name1', 'name2', 'name3', 'name4', 'name5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30,
        ),
        children: [
          Card(color: Colors.cyan,
              child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(child: Image(image: AssetImage('assets/images/child.jpg',),height: 50,width: 40,)),
              ),
              Text("hi")
            ],
          )),
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')) ,
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')) ,
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')) ,
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')),
          Image(image: AssetImage('assets/images/child.jpg')),

        ],
      ),
    );
  }
}
