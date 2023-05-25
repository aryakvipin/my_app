import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyBottomBar(),
  ));
}

class MyBottomBar extends StatefulWidget {
  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int setectectd =0;
  List bodys = const  <Widget>[
    Center(child: Card(child: Padding(padding: EdgeInsets.all(50.0), child: Text('Account'),),)),
    Card(child: Padding(padding: EdgeInsets.all(50.0), child: Text('Search'),),),
    Card(child: Padding(padding: EdgeInsets.all(50.0), child: Text('Favorite'),),),
    Card(child: Padding(padding: EdgeInsets.all(50.0), child: Text('Home'),),),
  ];
  void onitemtapped(int index){
    setState(() {
      setectectd = index;
    });
  }
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar:  AppBar(title: Text("Bottam Nav"),),
         bottomNavigationBar: BottomNavigationBar(
           type: BottomNavigationBarType.fixed,
           unselectedItemColor: Colors.green,
           selectedItemColor: Colors.yellow,
           backgroundColor: Colors.blue,

           items: [
           BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label:"Account" ),
           BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
           BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "faverate"),
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),

         ],
         currentIndex:setectectd ,
         onTap: onitemtapped,),
         body: bodys[setectectd] ,
       );
  }
}
