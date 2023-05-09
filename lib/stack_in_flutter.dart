import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home:stackeg  (),));
}

class stackeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Stack(
         children: <Widget>[
           Container(
             width: 400,
             height: 400,
             color: Colors.red,
             child:Icon(Icons.facebook),
           ),
           Positioned(
             left: 200,
             top: 100,
             child: Container(child: Text(' \$9.99 Only'),
               width: 100,
               height: 100,
               color: Colors.green,
             ),
           ),
           Container(
             width: 100,
             height: 100,
             color: Colors.blue,
           ),
         ],
       ),
     ),
   );
  }
}