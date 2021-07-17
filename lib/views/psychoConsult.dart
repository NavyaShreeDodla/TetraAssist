import 'package:flutter/material.dart';
class Psychological extends StatefulWidget {
  const Psychological({Key? key}) : super(key: key);

  @override
  _PsychologicalState createState() => _PsychologicalState();
}

class _PsychologicalState extends State<Psychological> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('TetraAssist'),
        backgroundColor: Colors.deepOrange,
      ),
      body:Center(
        child: Container(
          width:double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.deepOrangeAccent,
          child:Text('Psychological Consultation',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
