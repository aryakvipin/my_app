import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Splashsceen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Container(decoration: BoxDecoration(gradient: LinearGradient(begin:Alignment.topLeft,
         end: Alignment.centerRight,
         colors: [

       Colors.green,
       Colors.blue,
       Colors.yellow,
     ])),
       child: Center(
         child: Column(mainAxisAlignment: MainAxisAlignment.center,
           children: [
            // Icon(Icons.ac_unit_outlined,size: 100,color:Colors.green,),
           //  Image(image: AssetImage('assets/images/child.jpg'),),
             Image.asset("assets/images/child.jpg"),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Text("My App",style: TextStyle(fontSize: 20,color:Colors.lightBlueAccent),),
             ),
           ],
         ),

       ),
     ),



   );
  }
}