
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  //since we have passed a function pointer from main.dart so here selectHandler
  //is a pointer to that function.
  VoidCallback selectHandler;  
  String AnswerText;

  Answer(this.selectHandler, this.AnswerText);
 
  @override 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       child: ElevatedButton(
                 style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all(Colors.redAccent[400]),
                    foregroundColor: MaterialStateProperty.all(Colors.grey[100]) // to change text color
                    ),
                 child:Text(AnswerText),
                 onPressed: selectHandler, 
                 ),
    );
  }
}