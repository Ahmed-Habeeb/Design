import 'package:flutter/material.dart';



  shopcar(int num){
  return Stack(children: <Widget>[
    Container(
      margin: EdgeInsets.only(right: 20,top: 15),
      decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Icon(Icons.shopping_cart,color: Colors.white,),
      ),
    ),
    Transform.translate(
      offset: Offset(28,0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue),
        child: Text(num.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
      ),
    )
  ],);
  }
