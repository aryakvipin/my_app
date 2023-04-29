
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: Loginpage ()));
}

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: Icon(Icons.menu),

        title: const Text("Login Page",),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Padding(padding: EdgeInsets.only(top: 30)),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50,bottom: 30),
              child: Text(
                "Flutter Login",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 100,left: 100,top: 20,bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
               labelText: "Uername",
               prefixIcon: Icon(Icons.account_circle),
                hintText: "usetname",

              ),

              // decoration:InputDecoration(
              //   border: OutlineInputBorder(),
              //   prefixIcon: Icon(Icons.email),
              //   hintText: "Email",

             // ) ,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100,right: 100,top: 30,bottom: 20),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",

              decoration:InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.visibility_off),

               labelText: "Password",
                hintText: "password",

              ) ,
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top :20),
            child: SizedBox(width: 200,height: 50,
                child: ElevatedButton(onPressed: (){
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.black,
                      fontSize: 16.0
                  );
                }, child: const Text("Login",
                  style: TextStyle(fontSize: 25
                  ),),
                )
            ),
          ),

          SizedBox(height: 200,
            child: TextButton
              (onPressed: (

                ){
              Navigator.of(context).pushNamed('register');
            }, child: Text("Not a user ? Register Here")),
          )
        ],
      ),
    );
  }
}