import 'package:flutter/material.dart';
import 'package:tetra_assist/widgets/widget.dart';
import '7.dart';
import 'globals.dart' as globals;
class Six extends StatefulWidget {
  const Six({Key? key}) : super(key: key);

  @override
  _SixState createState() => _SixState();
}

class _SixState extends State<Six> {
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
                'Any Chronic Diseases ?',
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
                // _pans=1;
                setState(() {
                  print(globals.gans);
                  if(_pans!=1) {
                    _pans = 1;
                    globals.gans++;
                    print(globals.gans);
                  }
                  // globals.gans=0;
                  print(globals.gans);
                });
                Navigator.push(context,
                    new MaterialPageRoute(builder: (BuildContext context)=> new Seven())
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
                    "Lung Disease,Bp,Sugar  are in High",
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
                    new MaterialPageRoute(builder: (BuildContext context)=> new Seven())
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
                    "Lung Diseases,BP,Sugar are in Control",
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
                    new MaterialPageRoute(builder: (BuildContext context)=> new Seven())
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
                    "Not having any chronic diseases",
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
