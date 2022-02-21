import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../modules/ItemModule.dart';
import '../../providers/user_provider.dart';



class AddEdit extends StatefulWidget {
  String _title;
  int? id;


  AddEdit(this._title, this.id);

  @override
  _AddEditState createState() => _AddEditState(_title,id!);
}

class _AddEditState extends State<AddEdit> {

  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _pricecontroller = TextEditingController();

  String _title;
  int id;
  @override
  void dispose() {
    super.dispose();
    _titlecontroller.dispose();
    _pricecontroller.dispose();
  }


  _AddEditState(this._title, this.id);

  @override
  Widget build(BuildContext context) {
    final data=Provider.of<User_provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: (_title == "Edit") ? Container(
        padding: EdgeInsets.all(40),
        child: Transform.translate(
          offset: Offset(0, -40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _titlecontroller,
                obscureText: false,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    labelText: (data.items[id].title != null) ? data.items[id].title : "Title",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    contentPadding: EdgeInsets.only(left: 10),
                    icon: Icon(
                      Icons.title,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: _pricecontroller,
                obscureText: false,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    labelText: (data.items[id].price != null) ? data.items[id].price : "Price",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    contentPadding: EdgeInsets.only(left: 10),
                    icon: Icon(
                      Icons.atm,
                      color: Colors.black,
                    )),
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      _title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.5),
                    ),
                    disabledColor: Colors.white,
                    color: Colors.blue,
                    shape: StadiumBorder(),
                    onPressed: () {
                      String title = _titlecontroller.text;
                      String price = _pricecontroller.text;
                      if (title != null && price != null) {
                        ItemModule item = ItemModule(
                          title: title,
                          id: id,
                          price: price,
                        );
                        data.edititem(item);

                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ) :
      Container(
        padding: EdgeInsets.all(40),
        child: Transform.translate(
          offset: Offset(0, -40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _titlecontroller,
                obscureText: false,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    labelText:  "Title",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    contentPadding: EdgeInsets.only(left: 10),
                    icon: Icon(
                      Icons.title,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: _pricecontroller,
                obscureText: false,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    labelText:  "Price",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    contentPadding: EdgeInsets.only(left: 10),
                    icon: Icon(
                      Icons.atm,
                      color: Colors.black,
                    )),
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      _title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.5),
                    ),
                    disabledColor: Colors.white,
                    color: Colors.blue,
                    shape: StadiumBorder(),
                    onPressed: () {
                      String title = _titlecontroller.text;
                      String price = _pricecontroller.text;
                      if (title != null && price != null) {
                        ItemModule item = ItemModule(
                            title: title,
                            id: data.items.length,
                            price: price,
                            );
                        data.setitem(item);

                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        )
        ,
      )
      ,
    );
  }




  Widget loading(){
    return Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Loading..."),
          )
        ],
      ),
    );
  }

}
