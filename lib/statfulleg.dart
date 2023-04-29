import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter/login.dart';

void main() {
  runApp(MaterialApp(
    home: Myshow(),
  ));
}

class Myshow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Myshowstate();
}

class Myshowstate extends State<Myshow> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Loginpage()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("welcome"),
      ),
    );
  }
}
