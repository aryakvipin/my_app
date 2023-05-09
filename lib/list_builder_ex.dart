import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:List_builder_Ex (),));
  
}

class List_builder_Ex  extends StatelessWidget{
   var datas=["manu","Ram","Anu" ,"viny","Arun", "Amala"];
    var images=["assets/images/child.jpg","assets/images/child.jpg","assets/images/child.jpg","assets/images/child.jpg"];
   var colors=[800,700,600,500,400,300];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("My List"),),
     body:ListView.separated(
        itemCount: images.length,
         itemBuilder: (BuildContext context ,index){
       return Container(
           height: 100,
         color: Colors.green[colors[index]],
         child:Center(
             child: Image(image: AssetImage(images[index]),)) ,
       );
     }, separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 6,
            color: Colors.blue[colors[index]],

          );
     },) ,
   );
  }
}







// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(home: List_with_builder(),));
// }
//
// class List_with_builder extends StatelessWidget{
//   var datas=[
//     'item1',
//     'item2',
//     'item3',
//     'item4',
//     'item5',
//     'item7',
//     'item8',
//     'item8',
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: Text("List with builder"),),
//     body:ListView.builder(
//         itemBuilder: (BuildContext context,index){
//       return Container(
//         height: 50,
//           color: Colors.pink,
//         child: Center(child: Text(datas[index]),),
//
//       );
//     },
//     itemCount: datas.length,
//     ) ,
//
//   );
//   }
// }