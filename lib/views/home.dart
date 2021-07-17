import 'package:flutter/material.dart';
import 'package:tetra_assist/questions/1.dart';
import 'package:tetra_assist/views/covidP.dart';
import 'package:tetra_assist/views/drawer.dart';
import 'package:tetra_assist/views/noncovid.dart';
import 'package:tetra_assist/views/psychoConsult.dart';
import 'package:tetra_assist/widgets/widget.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('TetraAssist'),
        backgroundColor: Colors.deepOrange,
    ),
      drawer: MainDrawer(),
      body:Center(
        child:Column(
          children: [
            SizedBox(
              height:150,
            ),
            Text(
              'Services Provided by us::',
              style:TextStyle(
                  fontSize:23,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height:30,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (BuildContext context)=> new NonCovid())
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
                    "Non-Covid Assistance",
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
                    new MaterialPageRoute(builder: (BuildContext context)=> new Psychological())
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
                    "Psychological Consultation",
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
                    new MaterialPageRoute(builder: (BuildContext context)=> new CovidP())
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
                    "Covid Assistance",
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