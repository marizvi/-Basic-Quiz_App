
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
void main()
{
runApp(MyApp());
}

class MyApp extends StatefulWidget{

@override
State<StatefulWidget> createState(){
  return MyAppState();
}
}

class MyAppState extends State<MyApp>{

    var _ques = [ 
        {
          'questiontext':'What is the capital of India?',
          "answers":[
            {"text": "Lucknow", 'score' : 0},
            {"text": "Chennai", 'score' : 0},
            {"text": "Mumbai", 'score' : 0},
            {"text": "Delhi", 'score' : 10}
            ],
        },
        {
          'questiontext':'What is the capital of Gujarat?',
          'answers':[
            {"text": "Gandhinagar", 'score' : 10},
            {"text": "Ahmedabad", 'score' : 0},
            {"text": "Surat", 'score' : 0},
            {"text": "Vadodara", 'score' : 0}
                    ]
        },
        { 
          'questiontext':'What is the capital of Uttar Pradesh?',
          'answers':[
            {"text": "Allahabad", 'score' : 0},
            {"text": "Lucknow", 'score' : 10},
            {"text": "Kanpur", 'score' : 0},
            {"text": "Agra", 'score' : 0}
                    ]
        },
    ];

    var _qindex = 0;
    var _totalScore=0;
    void _updateqindex(int score)
    {
      _totalScore += score;
      print(_totalScore);
      setState(() { //This is to rerun the build method
      _qindex=_qindex+1;
      });
      print(_qindex);  
    }
  void func(){
    setState(() {
    _qindex=0;
    _totalScore=0;
    });
    print('pressed: ');
    print(_qindex);
  }
  Widget build(BuildContext context)
  { 
    return MaterialApp(home: 
    Scaffold(appBar: AppBar(title:Text('My first Tab'),),
             body:
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top:30),
             child: _qindex<_ques.length ? 
             Quiz(_updateqindex,_ques,_qindex,func)
             :Result(_totalScore,func),
              ),
      ),
    );
  }
}