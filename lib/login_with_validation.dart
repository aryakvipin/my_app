import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter/splsh1.dart';

import 'Listpage.dart';
import 'my_list_page.dart';

void main() {
  runApp(MaterialApp(
    home: login(),
  ));
}

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => lodinstate();
}

class lodinstate extends State<login> {
  final formkey = GlobalKey<FormState>();
  bool showpas= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formkey,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 200, right: 200, top: 50, bottom: 50),
            child: Text(
              "Login Page",
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 50),
            child: TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Email",
                hintText: "email",
                prefixIcon: Icon(Icons.person),
              ),
              textInputAction: TextInputAction.next,
              validator: (email) {
                if (email == null || email.isEmpty) {
                  return 'This field is required';
                }

                // using regular expression
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(email)) {
                  return "Please enter a valid email address";
                }

                // the email is valid
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 100, left: 100, top: 50, bottom: 50),
            child: TextFormField(
              obscureText: showpas,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "password",
                hintText: "password",
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    if(showpas){
                      showpas=false;
                    }
                    else{
                      showpas=true;
                    }
                  });
                }, icon:
                Icon(showpas==true ?Icons.visibility_off : Icons.visibility),),
              ),
              textInputAction: TextInputAction.done,
              validator: (passwors) {
                if (passwors!.isEmpty || passwors.length < 6) {
                  return " plesse Enter valid password";
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200, right: 200),
            child: ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  } else {
                    return null;
                  }
                },
                child: Text("Login")),
          ),
        ],
      ),
    ));
  }
}
