import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> with SingleTickerProviderStateMixin {
  late TabController tabcont;

  @override
  void initState() {
    super.initState();
    tabcont = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: Stack(alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red.withOpacity(.40)),
          ),
          FloatingActionButton(onPressed: (){},backgroundColor: Colors.red,child: Icon(Icons.add),)
        ],),
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(20),
      child: Container(),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Transform.translate(
              offset: Offset(15, -15),
              child: Text(
                "Simple way to find \nTasty Food",
                style: TextStyle(
                  letterSpacing: 1,
                  height: 1.4,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(
            height: 15,
          ),
          TabBar(
            tabs: <Widget>[
              Text("All"),
              Text("italian"),
              Text("Asian"),
              Text("Chinese"),
              Text("Burgers"),
            ],
            controller: tabcont,
            unselectedLabelStyle: TextStyle(letterSpacing: 1.5, fontSize: 15),
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            isScrollable: true,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: Icon(
              Icons.search,
              size: 35,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 30,right: 40),
              child: Row(children: <Widget>[
                drawcard(),drawcard()
              ],),
            ),
          )


        ],
      ),
    );
  }
  Widget drawcard(){
    return  Container(
      padding: EdgeInsets.only(left: 40),
      alignment: Alignment.topLeft,
      height: 400,
      width: 270,
      child: Stack(
        children: <Widget>[
          Container(
            height: 300,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: Colors.red.withOpacity(.06)),
          ),
          Transform.translate(
            offset: Offset(-10, -20),
            child: Container(
              height: 151,
              width: 151,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.withOpacity(.15)),
            ),
          ),
          Transform.translate(
            offset: Offset(-20, -25),
            child: Container(
              height: 151,
              width: 151,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/vegan.jpg"),
                      fit: BoxFit.contain),
                  shape: BoxShape.circle,
                  color: Colors.red.withOpacity(.15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    "\$ 20",
                    style: TextStyle(
                        color: Colors.red.shade900,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text("Vegan Pizza Bowl",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 5,),
                Text("With null",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 10,),
                Text("Contrary to popular belief, \n Lorem Ipsum is not simply random text , It has roots in ",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 10,),
                Text("420 koal")
              ],
            ),
          )
        ],
      ),
    );
  }
}
