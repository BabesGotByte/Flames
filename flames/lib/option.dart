import 'package:flames/letter.dart';
import 'package:flames/percent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Option extends StatefulWidget {

  final String name, crushname;
  const Option({Key? key, required this.name, required this.crushname}) : super(key: key);

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {

  String letter="";
  int perc=0;
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
        print("0");
        perc=(0);
      }
      else if(qq==1){
        print(lst[0]);
        perc=(lst[0]);
      }
      else{
        print(lst[0]*10+lst[1]);
        perc=(lst[0]*10+lst[1]);
      }
  }

  void initState() {
    algorithm1();
    algorithm2();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Stack(
      children: <Widget>[
        Positioned(
            top: MediaQuery.of(context).size.height*(0/100),
            child: GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Letter(word: letter)),
                );
              },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*(30/100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(46),
                      bottomRight: Radius.circular(46),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment(1.1102230246251565e-16, 1),
                        end: Alignment(-1, 1.1102230246251565e-16),
                        colors: [
                          Color.fromRGBO(239, 0, 87, 1),
                          Color.fromRGBO(241, 93, 147, 1)
                        ]
                    ),
                  ),
                ),
            ),
          ),
        Positioned(
          top: MediaQuery.of(context).size.height*(-30/100),
          left: MediaQuery.of(context).size.width*(-4/100),
          child: Container(
              width: MediaQuery.of(context).size.width*(25/100),
              height: MediaQuery.of(context).size.height*(80/100),
              decoration: BoxDecoration(
                image : DecorationImage(
                    image: AssetImage('assets/images/fire.png'),
                    fit: BoxFit.fitWidth
                ),
              )
          ),
        ),
          Positioned (
            top: MediaQuery.of(context).size.height*(25/100),
            left: MediaQuery.of(context).size.height*(45/100),
            right:MediaQuery.of(context).size.height*(45/100),
            child: Container(
              height: MediaQuery.of(context).size.height*(1/100),
              width: MediaQuery.of(context).size.width * (10 / 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            )
          ),
        Positioned(
            top: MediaQuery.of(context).size.height*(15/100),
          left: MediaQuery.of(context).size.width*(10/100),
          right: MediaQuery.of(context).size.width*(10/100),
            child: Center(
              child: Text('Flames',style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Montserrat',
              fontSize: 50,
              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1
            ),
            ),
          ),
          ),
        Positioned(
          top: MediaQuery.of(context).size.height*(50/100),
          left: MediaQuery.of(context).size.width*(20/100),
          right: MediaQuery.of(context).size.width*(20/100),
            child: Text('Click to calculate!', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1
              ),
              ),
            ),
        Positioned(
            top: MediaQuery.of(context).size.height*(70/100),
            child: GestureDetector(
                onHorizontalDragEnd: (DragEndDetails details){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Percent(percent: perc)),
                    );
                  },
                child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*(30/100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(46),
                          topRight: Radius.circular(46),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment(1.1102230246251565e-16, 1),
                            end: Alignment(-1, 1.1102230246251565e-16),
                            colors: [
                              Color.fromRGBO(239, 0, 87, 1),
                              Color.fromRGBO(241, 93, 147, 1)
                            ]
                        ),
                      ),
                  ),
                ),
            )
            ),
        Positioned (
            top: MediaQuery.of(context).size.height*(72/100),
            left: MediaQuery.of(context).size.height*(45/100),
            right:MediaQuery.of(context).size.height*(45/100),
            child: Container(
              height: 5,
              width: MediaQuery.of(context).size.width * (10 / 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            )
        ),
        Positioned(
          top: MediaQuery.of(context).size.height*(75/100),
          left: MediaQuery.of(context).size.width*(10/100),
          right: MediaQuery.of(context).size.width*(10/100),
          child: Center(
            child: Text('Love',style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Montserrat',
                fontSize: 50,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
            ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height*(75/100),
          right: MediaQuery.of(context).size.width*(-12/100),
          child: Container(
              width: MediaQuery.of(context).size.width*(50/100),
              height: MediaQuery.of(context).size.height*(40/100),
              decoration: BoxDecoration(
                image : DecorationImage(
                    image: AssetImage('assets/images/heart.png'),
                    fit: BoxFit.fitWidth
                ),
              )
          ),
        ),
      ]
      ),
      ),
    );
  }
}
