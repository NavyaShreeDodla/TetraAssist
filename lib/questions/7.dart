import 'package:flutter/material.dart';
import 'package:tetra_assist/widgets/widget.dart';
import 'Analysis.dart';
import 'globals.dart' as globals;
class Seven extends StatefulWidget {
  const Seven({Key? key}) : super(key: key);

  @override
  _SevenState createState() => _SevenState();
}

class _SevenState extends State<Seven> {
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
                'Any breathing problems',
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
                    new MaterialPageRoute(builder: (BuildContext context)=> new Eight())
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
                    "Yes, More critical",
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
                    new MaterialPageRoute(builder: (BuildContext context)=> new Eight())
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
                    "Yes, but not so difficult",
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
                    new MaterialPageRoute(builder: (BuildContext context)=> new Eight())
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
                    "No",
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
