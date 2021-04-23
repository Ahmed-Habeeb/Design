import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class NiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  search(),
                  listWidget(),
                  notifications(),
                  myTeam()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  titleWidget() {
    var now = DateTime.now();
    var date = DateFormat.yMMMMEEEEd().format(now);

    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Hi, Ahmed",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profiles/profileimg.jpg'),
                ),
                border: Border.all(color: Colors.amberAccent, width: 2)),
          )
        ],
      ),
    );
  }

  search() {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.only(left: 20),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(
            width: 7,
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                hintText: "Search ...", border: InputBorder.none),
          )),
        ],
      )),
    );
  }

  listWidget() {
    List<Color> color = [Colors.yellow, Colors.green, Colors.red];
    List<double> percent = [.5, .28, .60];
    return Container(
      height: 220,
      child: ListView.builder(
        itemCount: percent.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 130,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Card(
              elevation: 8,
              shadowColor: color[index],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              color: color[index],
              margin: EdgeInsets.only(top: 30, right: 10, bottom: 20),
              child: Padding(
                padding: const EdgeInsets.only(top: 23, left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularPercentIndicator(
                      radius: 30.0,
                      lineWidth: 2.0,
                      percent: percent[index],
                      center: new Text(
                        "${(percent[index] * 100).toInt()}%",
                        style: TextStyle(fontSize: 6, color: Colors.white),
                      ),
                      progressColor: Colors.white,
                      backgroundColor: Colors.white10,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Redesign \nPixel Website",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.2,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  notifications() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Notification",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          Card(
            color: Colors.blueGrey.shade200,
            elevation: 10,
            shadowColor: Colors.blueGrey,
            margin: EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.email_outlined,
                    size: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ryan Malone",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Ryan Malone invite you to project",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.east_sharp,
                    size: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  myTeam() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Team",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(22),
                  decoration:
                      BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                  child: Text("P",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),

                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,              children: [
                  Text(
                    "Pixel Studio",
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "You have 5 members",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),

                ],),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/profiles/img.jpg'),fit: BoxFit.cover
                          ),
                         ),
                    ),
                    Transform.translate(
                      offset: Offset(-20,0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/profiles/profileimg.jpg'),
                            ),
                            ),
                      ),
                    )

                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
