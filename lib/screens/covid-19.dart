import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Card(
            margin: EdgeInsets.zero,
            color: Colors.blue.shade800,
            elevation: 20,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60))),
            child: Container(
              width: double.infinity,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .40,
              child: Column(children: <Widget>[
                SizedBox(height: 50,),
                Text("World Wide", style: TextStyle(color: Colors.white,
                    fontSize: 25,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(children: <Widget>[
                            Text("Cases", style: TextStyle(
                                fontSize: 22, color: Colors.grey),),
                            SizedBox(height: 10,),
                            Text("2450", style: TextStyle(
                                fontSize: 22, color: Colors.lightBlueAccent),),
                          ],),
                          Column(children: <Widget>[
                            Text("Recovered", style: TextStyle(
                                fontSize: 22, color: Colors.grey),),
                            SizedBox(height: 10,),
                            Text("2450", style: TextStyle(
                                fontSize: 22, color: Colors.blue.shade900),),
                          ],),
                          Column(children: <Widget>[
                            Text("Deaths", style: TextStyle(
                                fontSize: 22, color: Colors.grey),),
                            SizedBox(height: 10,),
                            Text("2450", style: TextStyle(
                                fontSize: 22, color: Colors.red),),
                          ],),


                        ],),
                    ),
                  ),
                )

              ],),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20,),
            child: Text("Countries Rates",style: TextStyle(color: Colors.grey.shade700,fontSize: 22),),
          ),
          Expanded(
            child: ListView.builder(itemCount:20,itemBuilder: (context, index) {
              return draw_card();
            },),
          )
        ],
      ),
    );
  }
  draw_card(){
    return Card(
      margin: EdgeInsets.all(15),
      elevation: 10,

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Egypt",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(children: <Widget>[
                  Text("Cases", style: TextStyle(
                      fontSize: 22, color: Colors.grey),),
                  SizedBox(height: 10,),
                  Text("2450", style: TextStyle(
                      fontSize: 22, color: Colors.lightBlueAccent),),
                ],),
                Column(children: <Widget>[
                  Text("Recovered", style: TextStyle(
                      fontSize: 22, color: Colors.grey),),
                  SizedBox(height: 10,),
                  Text("2450", style: TextStyle(
                      fontSize: 22, color: Colors.blue.shade900),),
                ],),
                Column(children: <Widget>[
                  Text("Deaths", style: TextStyle(
                      fontSize: 22, color: Colors.grey),),
                  SizedBox(height: 10,),
                  Text("2450", style: TextStyle(
                      fontSize: 22, color: Colors.red),),
                ],),


              ],),
          ],
        )
      ),
    );
  }
}
