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
      body:ListView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context ,index){
            return Card(color: Colors.green[colors[index]],
              child: ListTile(
                title: Text("fg"),
                subtitle: Text("dfg"),
                leading: Image(image: AssetImage(images[index]),),
                trailing: Icon(Icons.call),
              ),
            );
            // return Container(
            //   height: 100,
            //   color: Colors.green[colors[index]],
            //   child:Center(
            //       child: Image(image: AssetImage(images[index]),)) ,
            // );
          }) ,
    );
  }
}
