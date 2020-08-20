import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/profiles/img.jpg",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .25,
          right: MediaQuery.of(context).size.width * .05,
          left: MediaQuery.of(context).size.width * .05,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              )
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Stack(
            children: <Widget>[
              Positioned(
                top: MediaQuery.of(context).size.height * .23,
                right: MediaQuery.of(context).size.width * .05,
                left: MediaQuery.of(context).size.width * .05,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Ahmed Habeeb",
                        style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Shbin Elqanater ,Qalubia")
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Follwing",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "2501",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "Follwers",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "325",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "Friends",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "501",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 40,top: 20),
                            child: Text("About Me"
                              ,),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                        child: Text(
                          "Iam Ahmed Habeeb Lives In Shbibn Elqanater, Qlaubia, Egypt .\nAnd have +1 year experience in programming with flutter  "
                              ,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                            height: 1.6,
                            wordSpacing: 1.4,
                          ),
                        ),
                      ),
                      Row(children: <Widget>[Padding(
                        padding: const EdgeInsets.only(left: 20,top:10,bottom: 10),
                        child: Text("Friends (25)",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                      ),],),
                      Container(
                        height: 65,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 25,
                            itemBuilder: (context,postion){
                              return  Padding(
                                padding: EdgeInsets.only(right: 10,left: 10),
                                child: CircleAvatar(
                                  backgroundImage:
                                  ExactAssetImage("assets/profiles/profileimg.jpg"),
                                  radius: 30,
                                ),
                              );
                            }),
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .25 - 55,
          left: MediaQuery.of(context).size.width / 2 - 55,
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade500,
            radius: 55,
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * .25 - 50,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage:
                  ExactAssetImage("assets/profiles/profileimg.jpg"),
                  radius: 50,
                ),
              ],
            )),
      ],
    );
  }
}