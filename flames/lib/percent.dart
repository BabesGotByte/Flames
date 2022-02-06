import 'dart:io';

import 'package:flames/gradient.dart';
import 'package:flames/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:math' as math;
import 'package:percent_indicator/percent_indicator.dart';
import 'package:share/share.dart';

class Percent extends StatefulWidget {

  final int percent;
  final String name;
  final String crushname;
  const Percent({Key? key, required this.percent,required this.name,required this.crushname}) : super(key: key);

  @override
  _PercentState createState() => _PercentState();
}

class _PercentState extends State<Percent> {

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    MobileAds.instance.initialize();
    super.initState();
    myBanner.load();
  }

  final BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-2305740568690159/2534134194',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(0.0),
                child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*(40/100),
                    child: new Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Image(image: AssetImage('assets/images/Vector.png'), fit: BoxFit.fitWidth),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*(10/100),
                              child: AdWidget(ad:myBanner),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child:  Container(
                              width: MediaQuery.of(context).size.width*(50/100),
                              height: MediaQuery.of(context).size.width*(50/100),
                              decoration: BoxDecoration(
                                boxShadow : [BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                                    offset: Offset(0,3.672131299972534),
                                    blurRadius: 3.672131299972534
                                )],
                                color : Color.fromRGBO(255, 255, 255, 1),
                                borderRadius : BorderRadius.all(Radius.elliptical(150, 150)),
                              ),
                              child: Center(
                                  child:CircularPercentIndicator(
                                    radius: MediaQuery.of(context).size.width*(50/100),
                                    lineWidth: 10.0,
                                    animation: true,
                                    percent: widget.percent/100,
                                    center: new Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget> [
                                          Text(widget.percent.toString(), textAlign: TextAlign.center, style: TextStyle(
                                            // color: Color.fromRGBO(255, 255, 255, 1),
                                              color: Color.fromRGBO(255, 57, 129, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 40,
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
                            ),
                          ),
                        ]
                    ),
                  ),
                  Text("Love Score", textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(20, 20, 20, 1),
                      fontFamily: 'Montserrat-Welcomepage',
                      fontSize: 50,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text("Great compatibility.. go on say it! something more I can’t think of", textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(20, 20, 20, 1.0),
                          fontFamily: 'Montserrat-Medium',
                          fontSize: 12,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),
                    ),
                  ),

                  // Padding(
                  //     padding: EdgeInsets.fromLTRB(5,5,5,10),
                  //   child: CircularPercentIndicator(
                  //     radius: MediaQuery.of(context).size.width*(40/100),
                  //     lineWidth: 5.0,
                  //     animation: true,
                  //     percent: widget.percent/100,
                  //     center: new Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: <Widget> [
                  //           Text(widget.percent.toString(), textAlign: TextAlign.center, style: TextStyle(
                  //             // color: Color.fromRGBO(255, 255, 255, 1),
                  //               color: Color.fromRGBO(255, 57, 129, 1),
                  //               fontFamily: 'Montserrat',
                  //               fontSize: 40,
                  //               letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  //               fontWeight: FontWeight.normal,
                  //               height: 1
                  //           ),
                  //           ), Text("percent", textAlign: TextAlign.center, style: TextStyle(
                  //             // color: Color.fromRGBO(255, 255, 255, 1),
                  //               color: Color.fromRGBO(255, 57, 129, 1),
                  //               fontFamily: 'Montserrat',
                  //               fontSize: 20,
                  //               letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  //               fontWeight: FontWeight.normal,
                  //               height: 1
                  //           ),
                  //           ),
                  //         ]
                  //     ),
                  //     circularStrokeCap: CircularStrokeCap.round,
                  //     progressColor: Color.fromRGBO(255, 57, 129, 1),
                  //     backgroundColor: Color.fromRGBO(231, 218, 218, 1.0),
                  //     // backgroundColor: Color.fromRGBO(
                  //     //     246, 205, 224, 1.0),
                  //   ),
                  // ),
                  RaisedButton(
                    onPressed: () {
                      Share.share('Hey, check this out! '+widget.name+' and '+widget.crushname+' shares a bond strength of '+widget.percent.toString()+'. You wanna find out yours!! Link: Coming soon', subject: 'CHeck this out!');
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      child: Container(
                        width: MediaQuery.of(context).size.width*(70/100),
                        height: MediaQuery.of(context).size.height*(6/100),
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.circular(6.0),
                          boxShadow : [BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.12),
                              offset: Offset(0,4),
                              blurRadius: 4
                          )],
                          gradient : LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color.fromRGBO(255, 122, 0, 0.6100000143051147),Color.fromRGBO(255, 57, 129, 1)]
                          ),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                        child: const Text(
                          'Share the Results',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway-Bold',
                              fontSize: 18,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1
                          ),
                        ),
                      ),
                    ),
                  ),
                  OutlinedButton.icon(
                    icon: Icon(Icons.replay),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    label: GradientText('Replay',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 110, 0, 1),
                        fontFamily: 'Raleway-Bold',
                        fontSize: 20,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(255, 57, 129, 1),
                            Color.fromRGBO(255,155,63,1),
                          ]),
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      side: BorderSide(
                        color: Color.fromRGBO(255, 110, 0, 1),
                        width: 1,
                      ),
                      minimumSize: Size(MediaQuery.of(context).size.width*(50/100), MediaQuery.of(context).size.height*(6/100)),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10,0,10,0),
                          child: Container(
                              width: MediaQuery.of(context).size.width*(7/100),
                              height: MediaQuery.of(context).size.height*(5/100),
                              decoration: BoxDecoration(
                                image : DecorationImage(
                                    image: AssetImage('assets/images/Vector3.png'),
                                    fit: BoxFit.fitWidth
                                ),
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10,0,20,0),
                          child : Container(
                              width: MediaQuery.of(context).size.width*(10/100),
                              height: MediaQuery.of(context).size.height*(5/100),
                              decoration: BoxDecoration(
                                image : DecorationImage(
                                    image: AssetImage('assets/images/Vector4.png'),
                                    fit: BoxFit.fitWidth
                                ),
                              )
                          ),
                        ),
                      ]
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0,0,30,30),
                        child: OutlinedButton.icon(
                            icon: Icon(Icons.share_outlined),
                            onPressed: (){
                              Share.share('Hey, wanna find out your bond and its strength with your partner. Check this out! Link: Coming soon!!', subject: 'Check this out!');
                            },
                            label: Text(''),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                            )
                        ),
                      )
                  ),
                ]
              ),
              ),
              ]
          ),
        ),
    );
  }
}
