
import 'package:designn/screens/e-commerce/screens/sharedwidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../mydrawer.dart';
import '../modules/ItemModule.dart';
import '../providers/user_provider.dart';
import 'details_screen.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> with SingleTickerProviderStateMixin {

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller=TextEditingController();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data=Provider.of<User_provider>(context);
    return Scaffold(

      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(

          "E-Commerce App ",
          style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
         GestureDetector(
           onTap: (){},
           child: shopcar(data.items.length),
         )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 95,bottom: 10),
              child: Text("Welcome in our App " ,style: TextStyle(color: Colors.black,letterSpacing: 1.5),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(8) ),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(fontSize: 16),
                  icon: Icon(Icons.search,color: Colors.black,),

                  border: InputBorder.none

                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(left: 12,right: 12,top: 5),itemCount: data.items.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                childAspectRatio: .62,
                mainAxisSpacing: 10

              ), itemBuilder: (context, index) {
                return _drawcard(context,data.items[index]);

              },),
            )
          ],
        ),
      ),
    );
  }
  _drawcard(BuildContext context,ItemModule item){
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details_Screen(item),));
      },
      child: Container(
        width: 80,
        height: 250,
        decoration: BoxDecoration(color: Colors.blue.shade200,
            borderRadius: BorderRadius.circular(10)

        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(item.title!,style: TextStyle(fontSize: 20,letterSpacing: 1.5,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(item.price!+"   L.E",style: TextStyle(color: Colors.grey.shade700,letterSpacing: 1.5,fontSize: 15,fontWeight: FontWeight.bold),),


            ],
          ),
        ),
      ),
    );
  }
}
