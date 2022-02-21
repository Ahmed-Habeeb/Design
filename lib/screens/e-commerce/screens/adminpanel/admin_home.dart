import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../mydrawer.dart';
import '../../modules/ItemModule.dart';
import '../../providers/user_provider.dart';
import '../details_screen.dart';
import 'AddEdit.dart';





class Admin_Home extends StatefulWidget {
  @override
  _Admin_HomeState createState() => _Admin_HomeState();
}

class _Admin_HomeState extends State<Admin_Home> {
  @override
  Widget build(BuildContext context) {
    final _items=Provider.of<User_provider>(context);
    return Scaffold(
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddEdit("ADD",null),));
        },
        child: Icon(Icons.add),
      ),

      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "E-Commerce App ",
          style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[

        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 10),
              child: Text("Welcome in our App " ,style: TextStyle(color: Colors.black,letterSpacing: 1.5),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(8) ),
              child: TextField(
               // controller: _controller,
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
                padding: EdgeInsets.only(left: 12,right: 12,top: 5),itemCount: _items.items.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  childAspectRatio: .60,
                  mainAxisSpacing: 10

              // ignore: missing_return
              ), itemBuilder: (context, index) {
                return _drawcard(context,_items.items[index]);

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
              Transform.translate(
                  offset: Offset(95,150),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddEdit("Edit",item.id),));

                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue),
                      child: Icon(Icons.edit,color: Colors.white,),
                    ),
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}
