import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Firstprofile extends StatefulWidget {
  @override
  _FirstprofileState createState() => _FirstprofileState();
}

class _FirstprofileState extends State<Firstprofile> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Image.asset(
            "assets/profiles/img.jpg",
            fit: BoxFit.cover,
          ),
          height: MediaQuery.of(context).size.height * .45,
          color: Colors.red,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                )
              ],
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text("Profile"),
            ),
            body: Stack(
              children: <Widget>[
                CustomPaint(
                  painter: ProfilePainter(),
                  child: Container(),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .30,
                  left: MediaQuery.of(context).size.width * .05,
                  right: MediaQuery.of(context).size.width * .04,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Ahmed Habeeb",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w900),
                      ),
                      Row(
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
                        height: 60,
                      ),
                      Text("About Me"),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Iam Ahmed Habeeb Lives In Shbibn Elqanater, Qlaubia, Egypt . "
                                "And have +1 year experience in programming with flutter ",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              height: 1.6,
                              wordSpacing: 1.4,
                            ),
                          )),
                    ],
                  ),
                ),
                details()


              ],
            )),

        Positioned(
          top: MediaQuery.of(context).size.height * .30,
          left: MediaQuery.of(context).size.width * .06,
          child: CircleAvatar(
            backgroundImage: ExactAssetImage("assets/profiles/profileimg.jpg"),
            radius: 35,
          ),
        ),
      ],
    );
  }
  details(){
    return Positioned(
      bottom: 25,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
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
      ),
    );
  }
}

class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    paint.color = Colors.white;
    path.lineTo(0, size.height * .25);
    path.lineTo(size.width, size.height * .34);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}