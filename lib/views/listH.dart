import 'package:flutter/material.dart';
import 'package:tetra_assist/views/drawer.dart';
import 'package:tetra_assist/views/hospitals.dart';
class listH extends StatefulWidget {
  const listH({Key? key}) : super(key: key);

  @override
  _listHState createState() => _listHState();
}

class _listHState extends State<listH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('TetraAssist'),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: MainDrawer(),
      body:hospitals(),
    );
  }
}
