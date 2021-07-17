import 'package:flutter/material.dart';
import 'package:tetra_assist/views/login.dart';
import 'package:tetra_assist/widgets/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('TetraAssist'),
        backgroundColor: Colors.deepOrange,
      ),
      body:SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.bottomCenter,
            padding:EdgeInsets.symmetric(horizontal:24,vertical:200),
            child: Column(
              children:[
                TextFormField(
                  decoration:InputDecoration(
                      hintText: 'UserName',
                      hintStyle: TextStyle(color: Colors.black),
                      // labelText: '',
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      prefixIcon: Icon(Icons.person),
                      enabledBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                style:simpleTextStyle(),
                ),
                SizedBox(
                  height:10,
                ),
                TextFormField(
                  decoration:InputDecoration(
                      hintText: 'email',
                      hintStyle: TextStyle(color: Colors.black),
                      // labelText: '',
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      prefixIcon: Icon(Icons.email),
                      enabledBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                  style:simpleTextStyle(),
                ),
                SizedBox(
                  height:10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black),
                      // labelText: '',
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      prefixIcon: Icon(Icons.lock),
                      enabledBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                  style:simpleTextStyle(),
                  autofocus: false,
                  obscureText: true,
                ),
                SizedBox(
                  height:10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.black),
                      // labelText: '',
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      prefixIcon: Icon(Icons.lock),
                      enabledBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                  style:simpleTextStyle(),
                  autofocus: false,
                  obscureText: true,
                ),
                SizedBox(
                  height:20,
                ),
                Container(
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
                    "Sign Up",
                    style: biggerTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height:10,
                ),
                Container(
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
                    "Sign Up with Google",
                    style: biggerTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height:10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: simpleTextStyle(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (BuildContext context)=> new SignIn())
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
