import 'package:flutter/material.dart';

late Function selectHandler;
var quizindex = 0;
bool active = true;
bool isSwitch = false;
var question = [
  'What\'s Your favorite Color?',
  'What\'s Your favorite Animal?',
  'What\'s Your favorite food?',
];
//  SizedBox(
//                 width: 150,
//                 height: 45,
//                 child: RaisedButton(
//                   color: Colors.blueAccent,
//                   splashColor: Colors.pink,
//                   onPressed: () {
//                     setState(() {
//                       answerquiz('One');
//                     });
//                   },
//                   child: Text('Answer1'),
//                 ),
//               ),
//               SizedBox(
//                 width: 150,
//                 height: 45,
//                 child: RaisedButton(
//                   color: Colors.blueAccent,
//                   splashColor: Colors.pink,
//                   onPressed: () {
//                     setState(() {
//                       answerquiz('Two');
//                     });
//                   },
//                   child: Text('Answer2'),
//                 ),
//               ),
//               SizedBox(
//                 width: 150,
//                 height: 45,
//                 child: RaisedButton(
//                   color: Colors.blueAccent,
//                   splashColor: Colors.pink,
//                   onPressed: () {
//                     setState(() {
//                       answerquiz('Tree');
//                     });
//                   },
//                   child: Text('Answer3'),
//                 ),
//               ),

// void countquiz() {
//   // setState(() {
//   quizindex = quizindex + 1;
//   print('Answer Choosn ');
//   print(quizindex);
//   return countquiz();
//   // });
// }
