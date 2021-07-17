import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NonCovid extends StatefulWidget {
  const NonCovid({Key? key}) : super(key: key);

  @override
  _NonCovidState createState() => _NonCovidState();
}

class _NonCovidState extends State<NonCovid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('TetraAssist'),
        backgroundColor: Colors.deepOrange,
      ),
      body:Center(
        child:Padding(
          padding:EdgeInsets.symmetric(horizontal:7),
          child: Column(
            children: [
              SizedBox(
                height:30,
              ),
              Text(
                'Today you are Covid negative',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height:15,
              ),
              Text(
                '1)If you are a primary contact with a Covid Positive person.\n2)If you have attended any public gatherings or meetings.\n3)If you move out for work daily.'
                ),
              SizedBox(
                height:15,
              ),
              Text(
                'Please follow the below guidelines and be healthy.',
                    style:TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height:5,
              ),
              Text(
                'a)Clean and disinfect frequently touched surfaces in the quarantined persons room daily with 1% Sodium Hypochlorite Solution.\nb) Clean and disinfect toilet surfaces daily with regular household bleach solution/phenolicdisinfectants\nc) Clean the clothes and other linen used by the person separately using common householddetergent and dry.',
              ),
              SizedBox(
                height:5,
              ),
              Text(
                'Need consultation then consult the below numbers::',
                style:TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: Text(
                  'Dr.Jashwanth - 9494859035\nDr.Azeez - 9059987786\nDr.Sandeep - 8500726900\nDr.Priyanka - 7981718813',
                ),
              ),
          ],
          ),
        ),
      ),
    );
  }
}
