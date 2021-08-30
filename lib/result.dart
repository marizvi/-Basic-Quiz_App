import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  int totalscore;
  VoidCallback startAgain;

  Result(this.totalscore,this.startAgain);

  String get resultPhrase{
    String resultText ;
    if(totalscore<30)
    {
      resultText = "You need Revision! ";
    }
    else 
    resultText = "You are Awesome!";

    return resultText;
  }
  String get getScore{
    String uScore = 'Total Score was: '+totalscore.toString() ;

    return uScore;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
                children:[
                  Container(
                    margin: EdgeInsets.only(top: 220),
                    width: double.infinity,
                  child:
                 Text(resultPhrase,
                 style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                 textAlign: TextAlign.center,
                 ),
                  ),
                  Container(
                  width: double.infinity,
                  child:
                 Text(getScore,
                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                 textAlign: TextAlign.center,
                 ),
                  ),
                  Container(
                  child: ElevatedButton(onPressed: startAgain, child: Text('Play Again'))
                  )
                  ]
              );  
  }
}