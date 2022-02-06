import 'dart:io';

import 'package:flames/login.dart';
import 'package:flames/percent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:math' as math;
import 'package:percent_indicator/percent_indicator.dart';
import 'package:share/share.dart';

class Loading extends StatefulWidget {

  final int percent;
  final String name;
  final String crushname;
  const Loading({Key? key, required this.percent,required this.name,required this.crushname}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Percent(percent: widget.percent, name: widget.name, crushname: widget.crushname)));
  }

  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
            children: <Widget>[
              Column(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          gradient : LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color.fromRGBO(240, 94, 48, 0.67),Color.fromRGBO(240, 04, 90, 1)]
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('FLAMES', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat-Welcomepage',
                              fontSize: 70,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
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
                            Padding(
                              padding: EdgeInsets.fromLTRB(5,5,5,10),
                              child: TweenAnimationBuilder<double>(
                                tween: Tween<double>(begin: 0.0, end: 1),
                                duration: const Duration(milliseconds: 6000),
                                builder: (context, value, _) => CircularPercentIndicator(
                                    radius: MediaQuery.of(context).size.width*(55/100),
                                    lineWidth: 12.0,
                                    animation: true,
                                    percent: widget.percent/100,
                                    center: new Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget> [
                                          Text(widget.percent.toString(), textAlign: TextAlign.center, style: TextStyle(
                                            // color: Color.fromRGBO(255, 255, 255, 1),
                                            //   color: Color.fromRGBO(255, 57, 129, 1),
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 55,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),
                                          ), Text("percent", textAlign: TextAlign.center, style: TextStyle(
                                            // color: Color.fromRGBO(255, 255, 255, 1),
                                            //   color: Color.fromRGBO(255, 57, 129, 1),
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 30,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),
                                          ),
                                        ]
                                    ),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    // progressColor: Color.fromRGBO(255, 57, 129, 1),
                                    // progressColor: Color.fromRGBO(255, 159, 17, 1),
                                    // backgroundColor: Color.fromRGBO(231, 218, 218, 1.0),
                                    progressColor: Colors.white,
                                    backgroundColor: Colors.black,
                                    // backgroundColor: Color.fromRGBO(
                                    //     246, 205, 224, 1.0),
                                  ),
                              ),
                            ),
                            Text('Calculating Flames', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat-Medium',
                              fontSize: 30,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                            ),
                          ],
                        ),
                      ),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}
