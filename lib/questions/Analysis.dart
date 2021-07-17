import 'package:flutter/material.dart';
import 'package:tetra_assist/views/Nserious.dart';
import 'package:tetra_assist/views/drawer.dart';
import 'package:tetra_assist/views/hospitals.dart';
import 'globals.dart' as globals;
class Eight extends StatefulWidget {
  const Eight({Key? key}) : super(key: key);

  @override
  _EightState createState() => _EightState();
}

class _EightState extends State<Eight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('TetraAssist'),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: MainDrawer(),
      body:globals.gans<4? Nserious():hospitals(),
    );
  }
}
