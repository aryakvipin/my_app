import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListPage(),
  ));
}

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Beauty shop"),centerTitle:true ,),
     body:ListView(
        children: [


          Card(color:Colors.amberAccent ,
            shadowColor: Colors.black,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(20.0),),
            child: ListTile(title: Text("beauty produt2"),
              subtitle: Text("description"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80"),),
              trailing: Wrap(children: [
                Icon(Icons.chat),
                Icon(Icons.call)
              ]),

            ),
          ),
          ListTile(title: Text("beauty produt3"),
    subtitle: Text("description"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80"),),
    trailing: Icon(Icons.call),
            tileColor: Colors.green,

          ),
          ListTile(title: Text("beauty produt4"),
            subtitle: Text("description"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80"),),

            trailing: Icon(Icons.call),
            tileColor: Colors.cyan,
          ),

          ListTile(title: Text("beauty produt5"),
            subtitle: Text("description"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80"),),

            trailing: Icon(Icons.call),
          ),
        ],


     ) ,
   );
  }

}