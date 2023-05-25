import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp( datetable());

class datetable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
     body: SingleChildScrollView(
         scrollDirection: Axis.horizontal,
       child: DataTable(
         border: TableBorder.all(width: 1, ),
         columns: [
         DataColumn(label: Text("Name", style: TextStyle(fontStyle: FontStyle.italic),)),
         DataColumn(label: Text("Age", style: TextStyle(fontStyle: FontStyle.italic),)),
         DataColumn(label: Text("Roll No", style: TextStyle(fontStyle: FontStyle.italic),)),
         DataColumn(label: Text("Salery", style: TextStyle(fontStyle: FontStyle.italic),)),
       ],
         rows: [
           DataRow(
             cells: <DataCell>[
               DataCell(Text('Sarah')),
               DataCell(Text('19')),
               DataCell(Text('12345')),
               DataCell(Text('50000')),
             ],
           ),
           DataRow(
             cells: <DataCell>[
               DataCell(Text('Sarah')),
               DataCell(Text('19')),
               DataCell(Text('12345')),
               DataCell(Text('50000')),
             ],
           ),
           DataRow(
             cells: <DataCell>[
               DataCell(Text('Sarah')),
               DataCell(Text('19')),
               DataCell(Text('12345')),
               DataCell(Text('50000')),
             ],
           ),DataRow(
             cells: <DataCell>[
               DataCell(Text('Sarah')),
               DataCell(Text('19')),
               DataCell(Text('12345')),
               DataCell(Text('50000')),
             ],
           ),
         ],

       ),
     ),
      ),
    );
  }
}