import 'package:flutter/material.dart';
import 'package:flutter1/screens/covid-19.dart';
import 'package:flutter1/screens/e-commerce/providers/user_provider.dart';
import 'package:flutter1/screens/e-commerce/screens/home_screen.dart';
import 'package:flutter1/screens/nicescreen.dart';
import 'package:flutter1/screens/profiles/firstprofile.dart';
import 'package:flutter1/screens/profiles/secprofile.dart';
import 'package:provider/provider.dart';

import 'screens/e-commerce/screens/adminpanel/admin_home.dart';
import 'screens/e-commerce/screens/auth/LoginSrceen.dart';
import 'screens/e-commerce/screens/auth/RegisterScreen.dart';
import 'screens/food_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "init":(context)=>HomePage(),
        "E-Commerce":(context)=>Home_Screen(),
        "Food-Delivery":(context)=>Food(),
        "Covid-19":(context)=>Covid(),
        "Profile-1":(context)=>Firstprofile(),
        "Profile-2":(context)=>Profile2(),
        "E-Commerce Home":(context)=>Home_Screen(),
        "Admin-Panel":(context)=>Admin_Home(),
        "Login":(context)=>LoginScreen(),
        "Register":(context)=>RegisterScreen(),
        "NiceScreen":(context)=>NiceScreen(),





      },
      initialRoute: "init",
    );
  }




}
class HomePage extends StatelessWidget {
  List<String> screens=[
    "E-Commerce",
    "Food-Delivery",
    "Covid-19",
    "Profile-1",
    "Profile-2",
    "NiceScreen"




  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text("Screens",style: TextStyle(letterSpacing: 2.5,fontSize: 25,fontWeight: FontWeight.bold),),centerTitle: true,elevation: 0,),
        body: ListView.builder(padding: EdgeInsets.only(top: 20),itemCount:screens.length,itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context,  screens[index]);
            },
            child: Card(
              margin: EdgeInsets.all(10),
              elevation: 25,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Center(child: Text(screens[index],style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,letterSpacing: 1.5),)),
              ),
            ),
          );
        },),
      ),
    );
  }
}
