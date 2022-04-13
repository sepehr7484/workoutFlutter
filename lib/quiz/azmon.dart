import 'package:flutter/material.dart';
import 'package:learning1/quiz/answer_quiz.dart';
import 'package:learning1/tools.dart';
import 'quesion_quiz.dart';
import './tools_quiz.dart';

class Azmoon extends StatefulWidget {
  Azmoon({Key? key}) : super(key: key);

  @override
  State<Azmoon> createState() => _AzmoonState();
}

class _AzmoonState extends State<Azmoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar('Quiz', Colors.green),
      body: Container(
        child: Center(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Question(question[quizindex]),

              const Divider(
                color: Colors.grey,
                endIndent: 50,
                indent: 50,
                height: 1,
              ),
              enabling(),
              // ignore: deprecated_member_use
              btnAnswer(),

              SizedBox(
                width: 150,
                height: 45,
                child: RaisedButton(
                  color: Colors.blueAccent,
                  splashColor: Colors.pink,
                  onPressed: active
                      ? null
                      : () {
                          setState(() {
                            // answerquiz();
                          });
                        },
                  child: Text('Answer4'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // countquiz() {
  //   // setState(() {
  //   quizindex = quizindex + 1;
  //   print('Answer Choosn ');
  //   print(quizindex);
  //   // });
  // }

  //.......................
  enabling() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Will option 4 be activated?'),
        Switch(
            value: isSwitch,
            onChanged: (value) {
              setState(() {
                isSwitch = value;
                active = !active;
              });
            }),
      ],
    );
  }

  btnAnswer() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          width: double.infinity,
          height: 45,
          child: RaisedButton(
            color: Colors.blueAccent,
            splashColor: Colors.pink,
            onPressed: () {
              countquiz();
            },
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
