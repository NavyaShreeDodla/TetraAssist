import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      body:StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("psychology").snapshots(),
        builder:(context,AsyncSnapshot snapshot){
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context,index){
                DocumentSnapshot doctor=snapshot.data.docs[index];
                return ListTile(
                  leading: Icon(Icons.person),
                  title:Text(doctor['Name'],style:TextStyle(fontSize: 18),),
                  subtitle: Text(doctor['Number'],),
                );
              },
            );
        },
      )
    );
  }
}
