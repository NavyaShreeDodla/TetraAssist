import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tetra_assist/views/forgetpwd.dart';
import 'package:tetra_assist/views/home.dart';
import 'package:tetra_assist/views/signup.dart';
import 'package:tetra_assist/widgets/widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool loginfail =false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
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
            padding:EdgeInsets.symmetric(horizontal:24,vertical:300),
            child: Column(
              children:[
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
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'Please enter your email address';
                    }
                    // Check if the entered email has the right format
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    // Return null if the entered email is valid
                    return null;
                  },
                  onChanged: (value) => _email = value,
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
                  validator: (val) =>
                  val!.length < 6 || val == null
                      ? 'Password too short.'
                      : null,
                  onChanged: (val) => _password = val,
                ),
                SizedBox(
                  height:10,
                ),
                Container(
                  child:GestureDetector(
                    onTap: () {Navigator.push(context,
                  new MaterialPageRoute(builder: (BuildContext context)=> new ForgetPwd())
                  );
                    },
                    child: Text(
                      'Forgot password ?',
                      style:TextStyle(
                        color:Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                InkWell(
                  onTap: (){
                    if (_formKey.currentState!.validate()){
                      print('******************************');
                    Home();
                    }
                    },
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
                        "Sign In",
                        style: biggerTextStyle(),
                        textAlign: TextAlign.center,
                      ),
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
                    "Sign In with Google",
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
                      "Don't have account? ",
                      style: simpleTextStyle(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (BuildContext context)=> new SignUp())
                        );
                      },
                      child: Text(
                        "Register now",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height:10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
