import 'package:flames/letter.dart';
import 'package:flames/loading.dart';
import 'package:flames/login.dart';
import 'package:flames/percent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/rendering.dart';

class Option extends StatefulWidget {

  final String name, crushname;
  const Option({Key? key, required this.name, required this.crushname}) : super(key: key);

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  String letter="";
  int perc=0;
  String intial="";
  String para="";
  String f="Friendship";
  String l="Love";
  String a="Affection";
  String m="Marriage";
  String e="Enemy";
  String s="Siblings";
  String fpara="Someone u can always rely on Friendship 👫";
  String lpara="Seems like you have met your destiny ♥";
  String apara="It feels like home when you are nearby your person 🤗";
  String mpara="Wondering when you will ask me to stay forever 💍";
  String epara="Red Flag 🚩! Something is fisshy out there 🧐";
  String spara="Sibling: A bond beyond friendship 😜💔";

  @override
  void algorithm1(){
      String s1=widget.name;
      String s2=widget.crushname;
      int i,cnt=0;
      var map = {};
      for(i=0;i<s1.length;i++){
        map[s1[i]]=0;
      }
      for(i=0;i<s1.length;i++){
        map[s1[i]]=map[s1[i]]+1;
      }
      var map2 = {};
      for(i=0;i<s2.length;i++){
        map2[s2[i]]=0;
      }
      for(i=0;i<s2.length;i++){
        map2[s2[i]]=map2[s2[i]]+1;
      }
      map.keys.forEach((k) {
        if(map2.containsKey(k)){
          map2[k]=0;
          map[k]=0;
        }
      });
      map.values.forEach((v) {
        if(v!=0){
          cnt++;
        }
      });
      map2.values.forEach((v) {
        if(v!=0){
          cnt++;
        }
      });
      List lst = ['F','L','A','M','E','S'];
      int left = lst.length;
      int temp=0;
      while(left>1){
        temp = (cnt-1)%left;
        lst.removeAt(temp);
        left=left-1;
      }
      print(lst[0]);
      letter=lst[0].toString();
    }

  void algorithm2(){
      String s1 = widget.name;
      String s2 = widget.crushname;
      int i;
      var m = {};
      for(i=0;i<s1.length;i++){
        m[s1[i]]=0;
      }
      for(i=0;i<s2.length;i++){
        m[s2[i]]=0;
      }
      for(i=0;i<s1.length;i++){
        m[s1[i]]=m[s1[i]]+1;
      }
      for(i=0;i<s2.length;i++){
        m[s2[i]]=m[s2[i]]+1;
      }
      int j=0;
      var lst = new List.filled(m.length, 0, growable: false);
      m.values.forEach((v) {
        lst[j]=v;
        j++;
      });
      lst.sort();
      for(var i=0;i<lst.length/2;i++){
        var temp = lst[i];
        lst[i] = lst[lst.length-1-i];
        lst[lst.length-1-i] = temp;
      }
      int qq=lst.length;
      while(qq>2){
        var temp = new List.filled(qq, 0, growable: false);
        int q=0;
        for(i=0;i<qq/2;i++){
          var temp2 = new List.filled(10, 0, growable: false);
          int k=0, numb = lst[i]+lst[qq-1-i];
          if(i==qq-1-i){
            numb = lst[i];
          }
          while(numb>0){
            temp2[k]=(numb%10);
            numb=(numb/10).toInt();
            k++;
          }
          for(j=k-1;j>=0;j--){
            temp[q]=temp2[j];
            q++;
          }
        }
        lst = temp;
        qq=q;
      }

      if(qq==0){
        perc=(0);
      }
      else if(qq==1){
        perc=(lst[0]);
      }
      else{
        perc=(lst[0]*10+lst[1]);
      }
  }

  void algo3(){
    if(letter=="F"){
      intial=f;
      para=fpara;
    }
    else if(letter=="L"){
      intial=l;
      para=lpara;
    }
    else if(letter=="A"){
      intial=a;
      para=apara;
    }
    else if(letter=="M"){
      intial=m;
      para=mpara;
    }
    else if(letter=="E"){
      intial=e;
      para=epara;
    }
    if(letter=="S"){
      intial=s;
      para=spara;
    }
    print(intial);
    print(para);
  }


  void initState() {
    algorithm1();
    algorithm2();
    algo3();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 234, 250, 1.0),
      body: SingleChildScrollView(
        child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(0,40,0,0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10,0,0,0),
                                  child: Text('Time to know!', textAlign: TextAlign.end, style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat-Welcomepage',
                                      fontSize: 24,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),
                                ),
                              ),
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Transform.rotate(
                                angle: 10.926020572521715 * (math.pi / 180),
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*(25/100),
                                      height: MediaQuery.of(context).size.height*(15/100),
                                      child: Image(image: new AssetImage('assets/images/Vector1.png')),
                                    )
                                ),
                              ),
                              Transform.rotate(
                                angle: 10.926020572521715 * (math.pi / 180),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 50, 20, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*(15/100),
                                    height: MediaQuery.of(context).size.height*(8/100),
                                    child: Image(image: new AssetImage('assets/images/Vector2.png')),
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ]
                  ),
                  ),
                  Padding(
                        padding: EdgeInsets.fromLTRB(15,0,15,0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*(30/100),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                    image: AssetImage('assets/images/pc1.png'),
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height*(20/100),
                                    fit: BoxFit.fitWidth
                                ),
                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*(5/100),
                              padding: const EdgeInsets.all(0.0),
                                buttonColor: Color.fromRGBO(240,4,90, 1),
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Letter(word: letter, intial: intial, para: para, name: widget.name, crushname: widget.crushname)),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))),
                                  child: Ink(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height*(5/100),
                                    decoration: const BoxDecoration(
                                      gradient : LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [Color.fromRGBO(
                                              246, 119, 78, 1.0),Color.fromRGBO(240,4,90, 1)]
                                      ),
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0)),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height*(5/100),
                                      // constraints: BoxConstraints(
                                      //   minWidth: MediaQuery.of(context).size.width,
                                      //   minHeight: MediaQuery.of(context).size.height*(5/100),
                                      // ), // min sizes for Material buttons
                                      alignment: Alignment.center,
                                      child: Text('Flames',  style: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 24,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.bold,
                                          height: 1
                                      ),
                                      ),
                                    ),
                                  ),
                                ),
                            ),
                              ]
                            ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15,0,15,0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*(30/100),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                                image: AssetImage('assets/images/pc2.png'),
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*(20/100),
                                fit: BoxFit.fitWidth
                            ),
                          ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*(5/100),
                            buttonColor: Color.fromRGBO(239, 0, 87, 1),
                            padding: const EdgeInsets.all(0.0),
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Loading(percent: perc, name: widget.name, crushname: widget.crushname)),
                                  );
                                },
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))),
                                child: Ink(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*(5/100),
                                  decoration: const BoxDecoration(
                                    gradient : LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Color.fromRGBO(241, 93, 147, 1),Color.fromRGBO(239, 0, 87, 1)]
                                    ),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0)),
                                  ),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      minWidth: MediaQuery.of(context).size.width,
                                      minHeight: MediaQuery.of(context).size.height*(5/100),
                                    ), // min sizes for Material buttons
                                    alignment: Alignment.center,
                                    child: Text('Love',  style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 24,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.bold,
                                        height: 1
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                              ],
                            ),
                      ),
                    ),
                  Column(
                      children: <Widget>[
                        GestureDetector(
                            onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Login()),
                                );
                              },
                         child: Icon(
                            Icons.replay,
                            color: Color.fromRGBO(58, 33, 52, .60),),
                        ),
                        Text('Re enter names',  style: TextStyle(
                            color: Color.fromRGBO(58, 33, 52, .60),
                            fontFamily: 'Montserrat-Medium',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),
                        ),
                      ]
                  )
              ]
            ),
          ]
        ),
      ),
    );
  }
}
