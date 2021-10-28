import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Stack(
        children: <Widget>[
        Positioned(
        // top: MediaQuery.of(context).size.height*(50/100),
        bottom: 0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*(50/100),
          decoration: BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(46),
              topRight: Radius.circular(46),
              bottomLeft: Radius.circular(46),
              bottomRight: Radius.circular(46),
            ),
            gradient : LinearGradient(
            begin: Alignment(6.123234262925839e-17,1),
            end: Alignment(-1,6.123234262925839e-17),
            colors: [Color.fromRGBO(241, 93, 147, 1),Color.fromRGBO(239, 0, 87, 1)]
            ),
          ),
        ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height*(52/100),
            left: MediaQuery.of(context).size.width*(4/100),
            right: MediaQuery.of(context).size.width*(4/100),
            child:Text('Explore the world of love with Flames!', textAlign: TextAlign.left, style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Montserrat',
                fontSize: 24,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
            ),
            ),
        ),
    ]
    )
    ),
    );
  }
}
