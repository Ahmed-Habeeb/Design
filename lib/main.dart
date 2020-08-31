import 'package:flutter/material.dart';
import 'package:flutter1/screens/covid-19.dart';
import 'package:flutter1/screens/e-commerce/providers/user_provider.dart';
import 'package:flutter1/screens/e-commerce/screens/home_screen.dart';
import 'package:flutter1/screens/profiles/firstprofile.dart';
import 'package:flutter1/screens/profiles/secprofile.dart';
import 'package:provider/provider.dart';

import 'modules/screens_module.dart';
import 'screens/food_screen.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => User_provider(),)
      ],
      child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Screens_module> screens=[
    Screens_module("E-Commerce",()=>Home_Screen()),
    Screens_module("Food-Delivery",()=>Food()),
    Screens_module("Covid-19",()=>Covid()),
    Screens_module("Profile-1",()=>Firstprofile()),
    Screens_module("Profile-2",()=>Profile2()),




  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Scaffold(
          appBar: AppBar(title: Text("Screens",style: TextStyle(letterSpacing: 2.5,fontSize: 25,fontWeight: FontWeight.bold),),centerTitle: true,elevation: 0,),
          body: ListView.builder(padding: EdgeInsets.only(top: 20),itemCount:screens.length,itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => screens[index].screen(),));
              },
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 25,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Center(child: Text(screens[index].name,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,letterSpacing: 1.5),)),
                ),
              ),
            );
          },),
        ),
      ),
    );
  }
}
