import 'dart:convert';

import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((MaterialApp(home: MyHomePage(),)));
}



class MyHomePage extends StatefulWidget {





  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List listToSearch=[
    {
      'name': 'Amir',
      'class': 12
    },
    {
      'name': 'Raza',
      'class': 11
    },
    {
      'name': 'Praksh',
      'class': 10
    },
    {
      'name': 'Nikhil',
      'class': 9
    },
    {
      'name': 'Sandeep',
      'class': 8
    },
    {
      'name': 'Tazeem',
      'class': 7
    },
    {
      'name': 'Najaf',
      'class': 6
    },
    {
      'name': 'Izhar',
      'class': 5
    },
  ];

  var selected;
  late List selectedList;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("serchable"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20,),
              Text('Menu Mode',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomSearchableDropDown(
                  dropdownHintText: 'Search For Name Here... ',
                  showLabelInMenu: true,
                  initialValue: [
                    {
                      'parameter': 'name',
                      'value': 'Amir',
                    }
                  ],
                  dropdownItemStyle: TextStyle(
                      color: Colors.red
                  ),
                  primaryColor: Colors.red,
                  menuMode: true,
                  labelStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                  ),
                  items: listToSearch,
                  label: 'Select Name',
                  prefixIcon:  Icon(Icons.search),
                  dropDownMenuItems: listToSearch?.map((item) {
                    return item['name'];
                  })?.toList() ??
                      [],
                  onChanged: (value){
                    if(value!=null)
                    {
                      selected = value['class'].toString();
                    }
                    else{
                      selected=null;
                    }
                  },
                ),
              ),
              SizedBox(height: 20,),
              Text('Select a value',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomSearchableDropDown(
                  items: listToSearch,
                  label: 'Select Name',
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.blue
                      )
                  ),
                  prefixIcon:  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Icon(Icons.search),
                  ),
                  dropDownMenuItems: listToSearch?.map((item) {
                    return item['name'];
                  })?.toList() ??
                      [],
                  onChanged: (value){
                    if(value!=null)
                    {
                      selected = value['class'].toString();
                    }
                    else{
                      selected=null;
                    }
                  },
                ),
              ),
              Text('Multi Select',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomSearchableDropDown(
                  items: listToSearch,

                  label: 'Select Name',
                  multiSelectTag: 'Names',
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.blue
                      )
                  ),
                  multiSelect: true,
                  prefixIcon:  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Icon(Icons.search),
                  ),
                  dropDownMenuItems: listToSearch?.map((item) {
                    return item['name'];
                  })?.toList() ??
                      [],
                  onChanged: (value){
                    if(value!=null)
                    {
                      selectedList = jsonDecode(value);
                    }
                    else{
                      selectedList.clear();
                    }
                  },
                ),
              ),
              Text('Multi Select as Widget',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomSearchableDropDown(
                  initialValue: [
                    {
                      'parameter': 'name',
                      'value': 'Amir',
                    },
                    {
                      'parameter': 'name',
                      'value': 'Tazeem',
                    },
                  ],
                  items: listToSearch,
                  label: 'Select Name',
                  multiSelectTag: 'Names',
                  multiSelectValuesAsWidget: true,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.blue
                      )
                  ),
                  multiSelect: true,
                  prefixIcon:  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Icon(Icons.search),
                  ),
                  dropDownMenuItems: listToSearch?.map((item) {
                    return item['name'];
                  })?.toList() ??
                      [],
                  onChanged: (value){
                    print(value.toString());
                    if(value!=null)
                    {
                      selectedList = jsonDecode(value);
                    }
                    else{
                      selectedList.clear();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}