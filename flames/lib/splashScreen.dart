import 'package:flames/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
                          begin: Alignment(0.5,0.5),
                          end: Alignment(-0.5,0.5),
                          colors: [Color.fromRGBO(255, 159, 17, 1),Color.fromRGBO(240, 3, 89, 1),Color.fromRGBO(241, 93, 147, 1)]
                          ),
                         ),
                      ),
                    ),
                  // Positioned(
                  //     top: -27,
                  //     left: 17.869293212890625,
                  //     child: Transform.rotate(
                  //       angle: -21.926020572521715 * (math.pi / 180),
                  //       child: SvgPicture.asset(
                  //           'assets/images/fire_main.svg',
                  //           semanticsLabel: 'vector'
                  //       ),
                  //     )
                  // ),
                  Positioned(
                      top: 365,
                      left: 50,
                      child: Text('FLAMES', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Raleway',
                          fontSize: 70,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
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
