import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller=TextEditingController();
  TextEditingController _passcontroller=TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, -4.0),
              end: Alignment(1.0, 4.0),
              colors: [
                Colors.blue.shade100,
                Colors.blue.shade700,
              ],
            )),),
        Scaffold(
          backgroundColor: Colors.transparent,

            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body:Stack(

              children: <Widget>[
                Container(
                  width: double.infinity,

                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0,-50),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(30)),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              controller: _emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  filled: true,
                                  labelText: "Email",
                                  labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 18),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  icon: Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(30)),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              controller: _passcontroller,
                              obscureText: true,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  filled: true,
                                  labelText: "Password",
                                  labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 18),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  icon: Icon(
                                    Icons.vpn_key,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Flexible(
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: RaisedButton(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 1),
                              ),
                              disabledColor: Colors.white,
                              color: Colors.white,
                              shape: StadiumBorder(),
                              onPressed: () async {
                                String email=_emailcontroller.text;
                                String pass=_passcontroller.text;
                                if(email.contains("@")&&pass.length>7) {

                                  }

                              },
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            )
        ),
      ],
    );
  }
}
