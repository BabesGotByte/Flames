import 'package:flames/welcomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 4500),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
                children: <Widget>[
                    Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          gradient : LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          colors: [Color.fromRGBO(255, 159, 17, 1),Color.fromRGBO(240, 3, 89, 1),Color.fromRGBO(241, 93, 147, 1)]
                          ),
                         ),
                      ),
                    ),
                  Positioned(
                      top:MediaQuery.of(context).size.height*(-5/100),
                      left: MediaQuery.of(context).size.width*(-12/100),
                      child: Transform.rotate(
                        angle: 10 * (math.pi / 180),
                        child: Container(
                            width: MediaQuery.of(context).size.width*(50/100),
                            height: MediaQuery.of(context).size.height*(55/100),
                            decoration: BoxDecoration(
                              image : DecorationImage(
                                  image: AssetImage('assets/images/fire.png'),
                                  fit: BoxFit.fitWidth
                              ),
                          )
                    ),
                      ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(50/100),
                    right: MediaQuery.of(context).size.width*(-30/100),
                    child: Transform.rotate(
                      angle: -5 * (math.pi / 180),
                    child: Container(
                        width: MediaQuery.of(context).size.width*(90/100),
                        height: MediaQuery.of(context).size.height*(50/100),
                        decoration: BoxDecoration(
                          image : DecorationImage(
                              image: AssetImage('assets/images/heart.png'),
                              fit: BoxFit.fitWidth
                          ),
                        )
                    ),
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(45/100),
                      left: MediaQuery.of(context).size.width*(10/100),
                      right: MediaQuery.of(context).size.width*(10/100),
                      child: Text('FLAMES', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Raleway',
                          fontSize: 70,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1
                      ),
                      )
                  ),
            ]
        )
        ),
    );
  }
}
