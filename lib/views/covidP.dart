import 'package:flutter/material.dart';
import 'package:tetra_assist/questions/1.dart';
import 'package:tetra_assist/questions/globals.dart' as globals;
class CovidP extends StatefulWidget {
  const CovidP({Key? key}) : super(key: key);

  @override
  _CovidPState createState() => _CovidPState();
}

class _CovidPState extends State<CovidP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('TetraAssist'),
        backgroundColor: Colors.deepOrange,
      ),
      body:Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height:100,
              ),
              Text(
                'Please note your:\n',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Body temparature\npulse rate\nBlood Pressure\nOxygen level\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.red[700],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '  Are you ready to enter the details?\n                    click below\n',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    globals.gans=0;
                  });
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context)=> new One())
                  );
                },
                child: Text(
                  'Click here',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
