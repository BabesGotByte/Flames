import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
                children: <Widget>[
            Positioned(
            top: MediaQuery.of(context).size.height*(50/100),
            left: MediaQuery.of(context).size.width*(10/100),
            right: MediaQuery.of(context).size.width*(10/100),
            child: Container(
                width: MediaQuery.of(context).size.width*(80/100),
                height: MediaQuery.of(context).size.height*(5/100),
                decoration: BoxDecoration(
                  borderRadius : BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                  color : Color.fromRGBO(240, 47, 118, 1),
                )
            )
          ), Positioned(
                      top: MediaQuery.of(context).size.height*(52/100),
                      left: MediaQuery.of(context).size.width*(20/100),
              child: Text('Enter Your Name', textAlign: TextAlign.left, style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Montserrat',
              fontSize: 16,
              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1
            ),)
          ), Positioned(
                      top: MediaQuery.of(context).size.height*(61/100),
                      left: MediaQuery.of(context).size.width*(10/100),
                      right: MediaQuery.of(context).size.width*(10/100),
                      child: Container(
                          width: MediaQuery.of(context).size.width*(80/100),
                          height: MediaQuery.of(context).size.height*(5/100),
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6),
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                            color : Color.fromRGBO(240, 47, 118, 1),
                          )
                      )
                  ), Positioned(
                      top: MediaQuery.of(context).size.height*(63/100),
                      left: MediaQuery.of(context).size.width*(20/100),
                      child: Text('Enter Crush Name', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),)
                  ),
        ]
      )
        ),
    );
  }
}