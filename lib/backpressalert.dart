import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home: alerteg(),));
}

class alerteg  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {

      return await showDialog( //show confirm dialogue
        //the return value will be from "Yes" or "No" options
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Exit App'),
          content: const Text('Do you want to exit an App?'),
          actions:[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              //return false when click on "NO"
              child:const Text('No'),
            ),

            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              //return true when click on "Yes"
              child:const Text('Yes'),
            ),
          ],
        ),
      )  ?? false; //if showDialouge had returned null, then return false
    }

    return WillPopScope(
     onWillPop: showExitPopup,
     child: Scaffold(
         appBar: AppBar(
           title: const Text("Override Back Button"),
           backgroundColor: Colors.redAccent,
         ),
         body: const Center(
           child: Text("Override Back Buttton"),
         )
     ),
   );
  }


}