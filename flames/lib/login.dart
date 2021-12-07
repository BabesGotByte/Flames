import 'package:flames/option.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      child: Center(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*(42/100),
                                decoration: BoxDecoration(
                                  image : DecorationImage(
                                      image: AssetImage('assets/images/Top.png'),
                                      fit: BoxFit.fitWidth
                                  ),
                                )
                            ),
                      )
                  ),
                    Positioned(
                    top: MediaQuery.of(context).size.height*(32/100),
                    right: MediaQuery.of(context).size.width*(30/100),
                    child: Transform.rotate(
                      angle: 10.926020572521715 * (math.pi / 180),
                      child: Container(
                          width: MediaQuery.of(context).size.width*(20/100),
                          height: MediaQuery.of(context).size.height*(10/100),
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/images/Vector1.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(38/100),
                    right: MediaQuery.of(context).size.width*(10/100),
                    child: Transform.rotate(
                      angle: 10.926020572521715 * (math.pi / 180),
                      child: Container(
                          width: MediaQuery.of(context).size.width*(15/100),
                          height: MediaQuery.of(context).size.height*(8/100),
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/images/Vector2.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ),
                    ),
                  ),
                Positioned(
                  top: MediaQuery.of(context).size.height*(30/100),
                  left: MediaQuery.of(context).size.width*(10/100),
                  child: Text('Discover Your ', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),
                  ),
                ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(33/100),
                    left: MediaQuery.of(context).size.width*(10/100),
                    child: Text('Flames', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 28,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(47/100),
                    left: MediaQuery.of(context).size.width*(10/100),
                    child: Container(
                      height: MediaQuery.of(context).size.height*(10/100),
                      width: MediaQuery.of(context).size.width*(80/100),
                      child: Padding(
                        padding: EdgeInsets.all(10),
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
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(54/100),
                    left: MediaQuery.of(context).size.width*(45/100),
                    child: Transform.rotate(
                      angle: 10.926020572521715 * (math.pi / 180),
                      child: Container(
                          width: MediaQuery.of(context).size.width*(8/100),
                          height: MediaQuery.of(context).size.height*(7/100),
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/images/&.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(59/100),
                    left: MediaQuery.of(context).size.width*(10/100),
                    child: Container(
                      height: MediaQuery.of(context).size.height*(10/100),
                      width: MediaQuery.of(context).size.width*(80/100),
                      child: Padding(
                        padding: EdgeInsets.all(10),
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
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(65/100),
                    left: MediaQuery.of(context).size.width*(10/100),
                      right: MediaQuery.of(context).size.width*(10/100),
                      child: GestureDetector(
                              onTap: (){
                                print(myController2.text);
                                print(myController1.text);
                                if(myController1.text == ""){
                                  final snackBar = SnackBar(content: Text('Please enter your name'));
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                }
                                else if(myController2.text == ""){
                                  final snackBar = SnackBar(content: Text("Please enter your Crush's name"));
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                }
                                else if(myController2.text != "" &&  myController1.text != ""){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Option(name: myController1.text, crushname: myController2.text,)),
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
                  ),
        ]
      )
        ),
    );
  }
}