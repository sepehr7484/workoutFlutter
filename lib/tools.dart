import 'package:flutter/material.dart';
import 'package:learning1/quiz/azmon.dart';
import 'package:learning1/p_g_builder.dart';
import 'package:learning1/pageview.dart';

// ignore: non_constant_identifier_names
app_bar(String title, Color color) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: color,
  );
}

decStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(width: 2, color: Colors.blue),
  );
}

Set<String> nameItems = {
  'PageView',
  'P_V.Builder',
  'Quiz',
  'PageView3',
  'PageView4',
  'PageView5'
};
List<String> urlimg = [
  'assest/pageview.png',
  'assest/builder.png',
  'assest/choose.png',
  'assest/pageview.png',
  'assest/pageview.png',
  'assest/pageview.png',
];
styletxthome() {
  return TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
}

List<Widget> pageitem = [
  Pageview1(),
  P_V_Builder(),
  Azmoon(),
  Pageview1(),
  Pageview1(),
  Pageview1(),
];
var imgcard = [
  'assest/s.png',
  'assest/soft.png',
  'assest/soen.png',
  'assest/en.png',
];
//  Text(
//                 question[quizindex],
//                 style: styletxthome(),
//               ),