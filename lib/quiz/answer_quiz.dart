import 'package:flutter/material.dart';
import './tools_quiz.dart';
import 'azmon.dart';

class AnswerQuiz extends StatefulWidget {
  AnswerQuiz({Key? key}) : super(key: key);

  @override
  State<AnswerQuiz> createState() => _AnswerQuizState();
}

class _AnswerQuizState extends State<AnswerQuiz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          width: double.infinity,
          height: 45,
          child: RaisedButton(
            color: Colors.blueAccent,
            splashColor: Colors.pink,
            onPressed: () {},
            child: Text('Answer1'),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          width: double.infinity,
          height: 45,
          child: RaisedButton(
            color: Colors.blueAccent,
            splashColor: Colors.pink,
            onPressed: () {
              setState(() {
                countquiz();
              });
            },
            child: Text('Answer2'),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          width: double.infinity,
          height: 45,
          child: RaisedButton(
            color: Colors.blueAccent,
            splashColor: Colors.pink,
            onPressed: () {},
            child: Text('Answer3'),
          ),
        ),
      ],
    );
  }

  countquiz() {
    setState(() {
      quizindex = quizindex + 1;
      print('Answer Choosn ');
      print(quizindex);
    });
  }
}
