import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
class hospitals extends StatefulWidget {
  const hospitals({Key? key}) : super(key: key);

  @override
  _hospitalsState createState() => _hospitalsState();
}

class _hospitalsState extends State<hospitals> {
  late Query _ref;
  DatabaseReference refer=FirebaseDatabase.instance.reference().child('hospitals');
  @override
  void initState()
  {
    super.initState();
    _ref=FirebaseDatabase.instance.reference().child('hospitals');
  }
  Widget _buildHospitals({required Map hospital}){
      return SingleChildScrollView(
        child: Card(
          child: Container(
            // color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical:10),
            padding: EdgeInsets.all(10),
            height:140,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.cyan,
                width:8
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage('assets/images/hicon.png'),
                        radius: 15.0,
                      ),
                      // Icon(
                      //     Icons.home,
                      //     // color: Theme.of(context).primarycolor,
                      //     size:20,
                      // ),
                      SizedBox(
                      width: 6,
                      ),
                      Flexible(
                        child: Text(
                          hospital['Name']!=null?hospital['Name']:'',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:15,
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_iphone,
                          color: Theme.of(context).accentColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          hospital['number']!=null?hospital['number']:'',
                          style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Available Beds',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          hospital['Total']!=null?hospital['Total']:'',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height:double.infinity,
        child: FirebaseAnimatedList(
          query:_ref,
          itemBuilder: (BuildContext context, DataSnapshot snapshot,
          Animation<double> animation,int index){
              Map hospital = snapshot.value;
              hospital['key'] = snapshot.key;
              return _buildHospitals(hospital: hospital);
            // return Text('No data available');
          },
        ),
      ),
    );
  }
}
