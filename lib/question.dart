import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Questions extends StatelessWidget {
  final String str; // final: once assigned here or using constructor
                    // then we can't reassign it throught the class;

  Questions(this.str);


  //this is also a correct constructor initialisation but 
  //final keyword won;t work with this kind of initialisation

  // Questions(String temp){
  //   this.str = temp;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.pink[100],
    width: double.infinity,// takes full width according to device width
    child : 
    Text(str,
    style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
          ),
      );
  }
}