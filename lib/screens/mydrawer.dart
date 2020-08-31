import 'package:flutter/material.dart';
import 'package:flutter1/main.dart';
import 'package:flutter1/modules/screens_module.dart';
import 'package:flutter1/screens/e-commerce/screens/adminpanel/admin_home.dart';
import 'package:flutter1/screens/e-commerce/screens/auth/LoginSrceen.dart';
import 'package:flutter1/screens/e-commerce/screens/auth/RegisterScreen.dart';
import 'package:flutter1/screens/e-commerce/screens/home_screen.dart';


class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<Screens_module> _list=[
    Screens_module("Home",()=>MyApp()),
    Screens_module("E-Commerce Home",()=>Home_Screen()),
    Screens_module("Admin-Panel",()=>Admin_Home()),
    Screens_module("Login",()=>LoginScreen()),
    Screens_module("Register",()=>RegisterScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 100),
        itemCount: _list.length,itemBuilder: (context, postion) {

        return ListTile(
          leading: (_list[postion].name=="Home")?Icon(Icons.home,color: Colors.black,):Icon(Icons.ac_unit),
          title: Text(

            _list[postion].name,
            style: TextStyle(fontSize: 18,color:(_list[postion].name=="Home")?Colors.black:Colors.grey.shade800 ),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>_list[postion].screen()));

          },
        );

      },),

    );
  }
}
