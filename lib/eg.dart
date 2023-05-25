import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((MaterialApp(home: MyApp(),)));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: new AppBar(),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                      itemExtent: 150,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.orangeAccent,
                      ),
                      itemCount: 20),
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                      (context, index) => Container(
                    margin: EdgeInsets.all(5.0),
                    color: Colors.yellow,
                  ),
                ),
              )
            ],
          ));

  }
}
