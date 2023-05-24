import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: gird_extend()));
}

class gird_extend extends StatefulWidget {


  @override
  State<gird_extend> createState() => _gird_extendState();
}

class _gird_extendState extends State<gird_extend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.extent(maxCrossAxisExtent: 100,
      children: List.generate(20, (index){
        return Card(
          child: Text("Hlo"),


        );
      },
      ),
      )
      ,
    );
  }
}
