import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class ForgetPwd extends StatefulWidget {
  const ForgetPwd({Key? key}) : super(key: key);

  @override
  _ForgetPwdState createState() => _ForgetPwdState();
}

class _ForgetPwdState extends State<ForgetPwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('TetraAssist'),
        backgroundColor: Colors.deepOrange,
      ),
      body:Center(
        child: Text(
          'Dont worry,you will able to login soon'
        ),
      ),
    );
  }
}
