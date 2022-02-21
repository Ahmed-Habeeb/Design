import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modules/ItemModule.dart';

class Details_Screen extends StatefulWidget {
  ItemModule _item_module;

  Details_Screen(this._item_module);

  @override
  _Details_ScreenState createState() => _Details_ScreenState(_item_module);
}

class _Details_ScreenState extends State<Details_Screen> {
  ItemModule _item;
  int num=1;

  _Details_ScreenState(this._item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 35,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Details",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(color: Colors.grey, offset: Offset(5, 5), blurRadius: 10)
              ]),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blue.shade400,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .30,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          _item.title!,
                          style: TextStyle(
                              fontSize: 25,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          _item.price! + "   L.E",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              letterSpacing: 1.5,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "ABOUT",
                      style: TextStyle(
                          letterSpacing: 1.5, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      _item.title!,
                      style: TextStyle(
                          letterSpacing: 2,
                          wordSpacing: 2,
                          height: 1.5,
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10,right: 20),
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*.5 ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onLongPress: (){},
                        enableFeedback: true,
                        onTap: (){
                          if(num>1){
                            setState(() {
                              num--;
                            });
                          }

                        },
                        child: Container(

                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(color: Colors.grey,width: 1)),
                          child: Icon(Icons.remove,color: Colors.black,),
                        ),
                      ),
                      Text(num.toString(),style: TextStyle(fontSize: 30),),
                      InkWell(
                        onTap: (){
                          setState(() {
                            num++;
                          });

                        },
                        child: Container(
                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(color: Colors.grey,width: 1)),
                          child: Icon(Icons.add,color: Colors.black,),
                        ),
                      )
                    ],
                  ),
                ),
                RaisedButton(

                  shape: StadiumBorder(),color: Colors.black,child: Padding(
                    padding: const EdgeInsets.only(left: 45,right: 45,top: 20,bottom: 20),
                    child: Text("ADD",style: TextStyle(color: Colors.white,letterSpacing: 2.5,fontWeight: FontWeight.bold),),
                  ),onPressed: (){},)
              ],
            ),
          )
        ],
      ),
    );
  }
}
