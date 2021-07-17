import 'package:flutter/material.dart';
import 'package:tetra_assist/widgets/widget.dart';
import '3.dart';
import 'globals.dart' as globals;
class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  int _pans=0;
  // bool isSet=false;
  // void settingAns(){
  //
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Covid Assistance'),
        backgroundColor: Colors.deepOrange,
      ),
      body:Center(
        child:Column(
          children: [
            SizedBox(
              height:150,
            ),
            Center(
              child: Text(
                'Your Pulse Rate?(in rpm)',
                style:TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height:30,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  print(globals.gans);
                  if(_pans!=1) {
                    _pans = 1;
                    globals.gans++;
                    print(globals.gans);
                  }
                  print(globals.gans);
                });
                Navigator.push(context,
                    new MaterialPageRoute(builder: (BuildContext context)=> new Three())
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff007EF4),
                          const Color(0xff2A75BC)
                        ],
                      )),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "90-120(Very High)",
                    style: biggerTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height:30,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (BuildContext context)=> new Three())
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff007EF4),
                          const Color(0xff2A75BC)
                        ],
                      )),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "60-80(Normal)",
                    style: biggerTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height:30,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (BuildContext context)=> new Three())
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff007EF4),
                          const Color(0xff2A75BC)
                        ],
                      )),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "72(Standard)",
                    style: biggerTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
