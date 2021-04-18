import 'package:flutter/material.dart';
import 'package:flutter1/main.dart';
import 'package:flutter1/screens/e-commerce/screens/adminpanel/admin_home.dart';
import 'package:flutter1/screens/e-commerce/screens/auth/LoginSrceen.dart';
import 'package:flutter1/screens/e-commerce/screens/auth/RegisterScreen.dart';
import 'package:flutter1/screens/e-commerce/screens/home_screen.dart';


class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<String> _list=[
    "Home",
    "E-Commerce Home",
    "Admin-Panel",
    "Login",
    "Register",
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 100),
        itemCount: _list.length,itemBuilder: (context, postion) {

        return ListTile(
          leading: (_list[postion]=="Home")?Icon(Icons.home,color: Colors.black,):Icon(Icons.ac_unit),
          title: Text(

            _list[postion],
            style: TextStyle(fontSize: 18,color:(_list[postion]=="Home")?Colors.black:Colors.grey.shade800 ),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            if(_list[postion]=="Home"){
              Navigator.pop(context);
              Navigator.pushNamed(context, "init");

            }else {
              Navigator.pop(context);
              Navigator.pushNamed(context, _list[postion]);

            }
          },
        );

      },),

    );
  }
}
