import 'package:flutter/material.dart';
import 'answers.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> ques;  // it means our string inside map is our object
  final Function updateqindex;
  VoidCallback func;
  final int qindex;
  Quiz(
     this.updateqindex,
     this.ques,
     this.qindex,
     this.func
    );

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
              //  Questions(ques[qindex]['questiontext'] as String),
              Questions(ques[qindex]['questiontext'] as String),

              // (...) operator in dart is used to operate on nested list
              // here children[] is itself a list of widgets so to display another list 
              //within children we have to make use of (...) operator.

             ...(ques[qindex]['answers'] as List<Map<String,Object>>) // our 'answer' contains a map which contains String as an object.
             .map((obj){

              //  return Answer(updateqindex,obj['text']);  here i was just calling function through its address

              return Answer(()=>updateqindex(obj['score']),obj['text'] as String); // but here we have anonymous function () wihtout any parameter of it because onpressed do not passes any parameter
               
               // this indicates that this map is the list of Answers widget,
               //where each widget holds a different obj from 'answers' key

             }).toList(),//toList() because maps doesn't gives us a list it is iterable

               Container(
                 margin: EdgeInsets.only(left:280),
                 width: 100,
                 child:
                  Answer(func,"Go To first"), // go to question 1
               )

              //  ElevatedButton(onPressed: ()=>{print('new pressed') }, child:Text('Answer 3'),),
              //  ElevatedButton(onPressed: func, child:Text('Go to Ques1'),),
              
              
              
             ]
              ,);
  }
}