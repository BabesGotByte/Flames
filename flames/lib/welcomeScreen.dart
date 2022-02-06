import 'package:flames/login.dart';
import 'package:flames/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.all(0.0),
                    child: Image(image: AssetImage('assets/images/bike.png'), fit: BoxFit.cover),
                  ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*(40/100),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(46),
                      topRight: Radius.circular(46),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    gradient : LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Color.fromRGBO(241, 93, 147, 1),Color.fromRGBO(239, 0, 87, 1)]
                    ),
                  ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*(40/100),
                      child: new Stack(
                        children: <Widget>[
                        Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(35,20,35,0),
                                    child: Text('Explore the world of love with Flames!', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat-Welcomepage',
                                        fontSize: 24,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.3
                                    ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(35,5,35,5),
                                    child: Text('Flame is a game named after acronym: Friends, Lovers, Affectionate, Marriage, Enemies, Siblings', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat-Medium',
                                        fontSize: 14,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    ),
                                    ),
                                  ),
                                ]
                            ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        width: MediaQuery.of(context).size.width*(25/100),
                                        height: MediaQuery.of(context).size.height*(15/100),
                                        margin: EdgeInsets.all(0.0),
                                        child: Image(image: AssetImage('assets/images/heart2.png'), fit: BoxFit.cover),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(10,10,40,10),
                                              child: FlatButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Login()),
                                                  );
                                                },
                                                height: MediaQuery.of(context).size.height*(10/100),
                                                minWidth: MediaQuery.of(context).size.width*(10/100),
                                                child: new Icon(
                                                  Icons.arrow_forward_rounded,
                                                  color: Colors.black,
                                                  size: 20.0,
                                                ),
                                                shape: new CircleBorder(
                                                    side: BorderSide(color: Colors.red),
                                                ),
                                                color: Colors.white,
                                              ),
                                        )
                                    ]
                                ),
                            ]
                          ),
                      ]
                  ),
                  )
                ),
              ),
            ]
         )
        ]
        ),
        ),
    );
  }
}
