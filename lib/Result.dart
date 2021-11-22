import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  String get resultPhrase{
    var resultText = 'You did it!';
    if(score <= 8){
      resultText='BC doodh ka dhula!!';
    }else if(score{
      resultText=
    }
  }

  Result(this.score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(Text(
      resultPhrase,
      style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold),
      ),),
    );
  }
}
