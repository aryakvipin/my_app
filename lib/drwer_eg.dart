import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerEg(),
  ));
}

class DrawerEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer:
      Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.greenAccent),
        child: Drawer(

          child: ListView(
            children: [
              UserAccountsDrawerHeader(decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage("https://media.istockphoto.com/id/1341291721/photo/bokeh-lights-dark-blue-holiday-background.jpg?s=170667a&w=0&k=20&c=8xdbd3qU634kiN6dzOqqN_MWkUgTzGzKwxbbw_HPOXc="))),
                accountName: Text("Arya"),
                accountEmail: Text("arya@gmail.com"),
                currentAccountPicture: GestureDetector(
                  onTap: (){
                    print("welcome");
                  },
                    child: CircleAvatar(
                  backgroundImage: (AssetImage("assets/images/child.jpg")),
                )),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: (AssetImage("assets/images/fish.png")),
                  ),
                  CircleAvatar(
                    backgroundImage: (AssetImage("assets/images/tiger.png")),
                  )
                ],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.account_box_outlined),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Sttings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
