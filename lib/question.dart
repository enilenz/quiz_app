import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Questions extends StatelessWidget{

  final String questions;

  Questions(this.questions);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity ,
        margin: EdgeInsets.all(10),
        child:Text(
          questions,
          style: TextStyle(fontSize: 26),
          textAlign: TextAlign.center,));
  }
}