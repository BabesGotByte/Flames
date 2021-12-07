import 'package:flames/login.dart';
import 'package:flames/option.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:share/share.dart';
import 'package:flutter/widgets.dart';

class Letter extends StatefulWidget {
  final String word;
  const Letter({Key? key, required this.word}) : super(key: key);

  @override
  _LetterState createState() => _LetterState();
}

class _LetterState extends State<Letter> {

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
                  child: Container(
                      width: MediaQuery.of(context).size.width*(20/100),
                      height: MediaQuery.of(context).size.width*(70/100),
                      decoration: BoxDecoration(
                        boxShadow : [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                            offset: Offset(0,3.672131299972534),
                            blurRadius: 3.672131299972534
                        )],
                        color : Color.fromRGBO(255, 255, 255, 1),
                        borderRadius : BorderRadius.all(Radius.elliptical(224, 224)),
                      )
                  )
              ),
                Positioned(
                    top: MediaQuery.of(context).size.height*(20/100),
                    left: MediaQuery.of(context).size.width*(10/100),
                    right: MediaQuery.of(context).size.width*(10/100),
                    child: Text(widget.word, textAlign: TextAlign.center, style: TextStyle(
                    // color: undefined,
                    fontFamily: 'Milonga',
                    fontSize: 167.81619262695312,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(50/100),
                    left: MediaQuery.of(context).size.width*(10/100),
                    right: MediaQuery.of(context).size.width*(10/100),
                    child: Text('Friendship', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(20, 20, 20, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 50,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),
                    )
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*(55/100),
                  left: MediaQuery.of(context).size.width*(10/100),
                  right: MediaQuery.of(context).size.width*(10/100),
                    child: Text('The only way to have a friend is to be one', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(20, 20, 20, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                    ),
                ),
                Positioned(
                top: MediaQuery.of(context).size.height*(65/100),
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
                  top: MediaQuery.of(context).size.height*(72/100),
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
                  top: MediaQuery.of(context).size.height*(75/100),
                  right: MediaQuery.of(context).size.width*(25/100),
                  child: Container(
                      width: MediaQuery.of(context).size.width*(7/100),
                      height: MediaQuery.of(context).size.height*(20/100),
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/Vector3.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*(73/100),
                  right: MediaQuery.of(context).size.width*(15/100),
                  child: Container(
                      width: MediaQuery.of(context).size.width*(10/100),
                      height: MediaQuery.of(context).size.height*(20/100),
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/Vector4.png'),
                            fit: BoxFit.fitWidth
                        ),
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
              ]
          )
      ),
    );
  }
}