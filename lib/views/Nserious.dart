import 'package:flutter/material.dart';
class Nserious extends StatefulWidget {
  const Nserious({Key? key}) : super(key: key);

  @override
  _NseriousState createState() => _NseriousState();
}

class _NseriousState extends State<Nserious> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //     appBar: AppBar(
    //     title:Text('TetraAssist'),
    // backgroundColor: Colors.deepOrange,
    // ),
      body:Center(
        child:Padding(
          padding:EdgeInsets.symmetric(horizontal:7),
          child: Column(
            children: [
              SizedBox(
                height:100,
              ),
              Text(
                'You dont need bed at the current situation',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
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
