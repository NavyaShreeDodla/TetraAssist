import 'package:flutter/material.dart';
import 'package:tetra_assist/views/listH.dart';
import 'package:tetra_assist/views/login.dart';

import 'home.dart';
import 'hospitals.dart';
// import 'package:tetra_assist/widgets/widget.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
        children:<Widget>[
          Container(
            width:double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blueAccent,
            child:Center(
              child:Column(
                children:[
                  Container(
                    width:100,
                    height:100,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    decoration:BoxDecoration(
                    shape:BoxShape.circle,
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/images/user.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'username',
                    style:TextStyle(
                      fontSize:22,
                      color: Colors.white
                    ),
                  ),
              Text(
                'abc@gmail.com',
                style:TextStyle(
                    fontSize:22,
                    color: Colors.white
                ),
              ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title:Text('Home',style:TextStyle(fontSize: 18),),
            onTap:() { Navigator.push(context,
                new MaterialPageRoute(builder: (BuildContext context)=> new Home())
            );
            },
          ),
          ListTile(
            leading: Icon(Icons.bed_rounded),
            title:Text('Beds',style:TextStyle(fontSize: 18),),
              onTap:() {
                Navigator.push(context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new listH())
                );
              },
          ),
          // ListTile(
          // leading: Icon(Icons.person),
          //   title:Text('profile',style:TextStyle(fontSize: 18),),
          // ),
          // ListTile(
          //   leading: Icon(Icons.settings),
          //   title:Text('settings',style:TextStyle(fontSize: 18),),
          //   onTap: null,
          // ),
          ListTile(
            leading: Icon(Icons.lock),
            title:Text('Logout',style:TextStyle(fontSize: 18),),
            onTap:() { Navigator.push(context,
                new MaterialPageRoute(builder: (BuildContext context)=> new SignIn())
            );
            },
          ),
        ],
      ),
    );
  }
}