import 'package:flames/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;
import 'package:percent_indicator/percent_indicator.dart';
import 'package:share/share.dart';

class Percent extends StatefulWidget {

  final int percent;
  const Percent({Key? key, required this.percent}) : super(key: key);

  @override
  _PercentState createState() => _PercentState();
}

class _PercentState extends State<Percent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*(40/100),
                    decoration: BoxDecoration(
                      image : DecorationImage(
                          image: AssetImage('assets/images/Vector.png'),
                          fit: BoxFit.fitWidth
                      ),
                    )
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height*(15/100),
                  left: MediaQuery.of(context).size.width*(10/100),
                  right: MediaQuery.of(context).size.width*(10/100),
                  child: Text('FLAMES',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1.0),
                                        fontFamily: 'Milonga',
                                        fontSize: 70,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),
                                  ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*(40/100),
                left: MediaQuery.of(context).size.width*(10/100),
                right: MediaQuery.of(context).size.width*(10/100),
                  child: CircularPercentIndicator(
                    radius: MediaQuery.of(context).size.width*(60/100),
                    lineWidth: 13.0,
                    animation: true,
                    percent: widget.percent/100,
                    center: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text(widget.percent.toString(), textAlign: TextAlign.center, style: TextStyle(
                        // color: Color.fromRGBO(255, 255, 255, 1),
                        color: Color.fromRGBO(255, 57, 129, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 70,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),
                    ), Text("percent", textAlign: TextAlign.center, style: TextStyle(
                          // color: Color.fromRGBO(255, 255, 255, 1),
                            color: Color.fromRGBO(255, 57, 129, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),
                        ),
                      ]
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Color.fromRGBO(255, 57, 129, 1),
                      backgroundColor: Color.fromRGBO(231, 218, 218, 1.0),
                      // backgroundColor: Color.fromRGBO(
                      //     246, 205, 224, 1.0),
                  ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height*(75/100),
                  left: MediaQuery.of(context).size.width*(15/100),
                  right: MediaQuery.of(context).size.width*(15/100),
                  child: RaisedButton(
                    onPressed: () {
                      Share.share('check out my website https://example.com', subject: 'Look what I made!');
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      child: Container(
                        width: MediaQuery.of(context).size.width*(70/100),
                        height: MediaQuery.of(context).size.height*(5/100),
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.circular(20.0),
                          gradient : LinearGradient(
                              begin: Alignment(6.123234262925839e-17,1),
                              end: Alignment(-1,6.123234262925839e-17),
                              colors: [Color.fromRGBO(255, 122, 0, 0.6100000143051147),Color.fromRGBO(255, 57, 129, 1)]
                          ),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                        alignment: Alignment.center,
                        child: const Text(
                          'Share the Results',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*(82/100),
                left: MediaQuery.of(context).size.width*(15/100),
                right: MediaQuery.of(context).size.width*(15/100),
                child: OutlinedButton.icon(
                    icon: Icon(Icons.replay),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    label: Text('Replay', textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 110, 0, 1),
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                    )
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*(88/100),
                right: MediaQuery.of(context).size.width*(15/100),
                child: OutlinedButton.icon(
                    icon: Icon(Icons.share_outlined),
                    onPressed: (){
                      Share.share('check out my website https://example.com', subject: 'Look what I made!');
                    },
                    label: Text(''),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                    )
                ),
              ),
              // Center(
              //     child: Column(
              //     mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              //     children: <Widget>[
              //           Text('FLAMES',
              //                 textAlign: TextAlign.center,
              //                 style: TextStyle(
              //                     color: Color.fromRGBO(255, 255, 255, 1),
              //                     fontFamily: 'Montserrat',
              //                     fontSize: 70,
              //                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              //                     fontWeight: FontWeight.normal,
              //                     height: 1
              //                 ),
              //               ),
              //           CircularPercentIndicator(
              //               radius: MediaQuery.of(context).size.width*(70/100),
              //               lineWidth: 13.0,
              //               animation: true,
              //               percent: 0.7,
              //               center: new Text(widget.percent.toString()+" %", textAlign: TextAlign.center, style: TextStyle(
              //                   color: Color.fromRGBO(255, 255, 255, 1),
              //                   // color: Colors.white,
              //                   fontFamily: 'Montserrat',
              //                   fontSize: 70,
              //                   letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              //                   fontWeight: FontWeight.normal,
              //                   height: 1
              //                 ),
              //               ),
              //               circularStrokeCap: CircularStrokeCap.round,
              //               progressColor: Colors.white,
              //           ),
              //         Text('Calculating Flames', textAlign: TextAlign.left, style: TextStyle(
              //                     color: Color.fromRGBO(255, 255, 255, 1),
              //                     fontFamily: 'Montserrat',
              //                     fontSize: 30,
              //                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              //                     fontWeight: FontWeight.normal,
              //                     height: 1
              //                 ),
              //         )
              //      ]
              //     ),
              // ),
              ]
          ),
        ),
    );
  }
}
