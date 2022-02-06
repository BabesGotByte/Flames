import 'dart:ffi';

import 'package:flames/option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  bool b = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*(30/100),
                        child: new Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topCenter,
                              child: Image(
                                    image: AssetImage('assets/images/Top.png'),
                                    width: MediaQuery.of(context).size.width,
                                ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text('FLAMES',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'MPLUSRounded1c',
                                    fontSize: 40,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 4.0,
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(4.0, 4.0),
                                      ),
                                    ],
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20,40,0,0),
                                    child: Text('Discover Your ', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Montserrat-Medium',
                                        fontSize: 14,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20,5,0,0),
                                    child: Text('Flames', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Montserrat-Medium',
                                        fontSize: 28,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Transform.rotate(
                                  angle: 10.926020572521715 * (math.pi / 180),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                        width: MediaQuery.of(context).size.width*(25/100),
                                        height: MediaQuery.of(context).size.height*(15/100),
                                        child: Image(image: new AssetImage('assets/images/Vector1.png')),
                                        )
                                  ),
                                ),
                              Transform.rotate(
                                  angle: 10.926020572521715 * (math.pi / 180),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 70, 20, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*(15/100),
                                      height: MediaQuery.of(context).size.height*(8/100),
                                        child: Image(image: new AssetImage('assets/images/Vector2.png')),
                                  ),
                                ),
                              ),
                              ]
                          ),
                        ]
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height*(10/100),
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20,15,20,5),
                              child: TextField(
                                controller: myController1,
                                cursorColor: Colors.black,
                                style: TextStyle(color : Color.fromRGBO(0,0,0, 1),),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color.fromRGBO(240, 47, 118, 1), width: 1.0),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color.fromRGBO(240, 47, 118, 1), width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(240, 47, 118, 1)),
                                    borderRadius: BorderRadius.circular(2.7),
                                  ),
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  labelText: 'Enter Your Name',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2),
                            child: Transform.rotate(
                                  angle: -32.19 * (math.pi / 180),
                                  child: Text('&', textAlign: TextAlign.center, style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Ribeye-Regular',
                                      fontSize: 19.16,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 2.0,
                                          color: Color.fromRGBO(0, 0, 0, 0.15),
                                          offset: Offset(2.0, 2.0),
                                        ),
                                      ],
                                  ),
                                  ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*(10/100),
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20,5,20,5),
                              child: TextField(
                                controller: myController2,
                                cursorColor: Colors.black,
                                style: TextStyle(
                                  color : Color.fromRGBO(0,0,0, 1),),
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color.fromRGBO(240, 47, 118, 1), width: 1.0),
                                  ),
                                  labelText: 'Enter Crush Name',
                                  border: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Color.fromRGBO(240, 47, 118, 1)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(240, 47, 118, 1)),
                                    borderRadius: BorderRadius.circular(2.7),
                                  ),
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: (){
                                print(myController2.text);
                                print(myController1.text);
                                if(myController1.text == ""){
                                  // final snackBar = SnackBar(content: Text('Please enter your name'));
                                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                }
                                else if(myController2.text == ""){
                                  // final snackBar = SnackBar(content: Text("Please enter your Crush's name"));
                                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                }
                                else if(myController2.text != "" &&  myController1.text != ""){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Option(name: myController1.text.toLowerCase(), crushname: myController2.text.toLowerCase(),)),
                                  );
                                }
                              },
                              child: Center(
                                child: Container(
                                    width: MediaQuery.of(context).size.width*(25/100),
                                    height: MediaQuery.of(context).size.height*(25/100),
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/images/heartfire.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                ),
                              )
                          )
                      ]
                      ),
                   ]
                )
              ]
            ),
        ),
    );
  }
}