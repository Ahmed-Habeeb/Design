

import 'package:flutter/material.dart';
import 'package:flutter1/screens/e-commerce/modules/ItemModule.dart';


class User_provider with ChangeNotifier{
  List< ItemModule> items=[
    ItemModule(id: 0,price: "2100",title: "Oppo A1k"),
    ItemModule(id: 1,price: "3500",title: "Oppo F5"),


  ];


  setitem(ItemModule item){
    items.add(item);
    notifyListeners();
  }

  edititem(ItemModule item){
    items[item.id]=item;
    notifyListeners();
  }






}