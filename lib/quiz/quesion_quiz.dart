import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  late String txtQuestion;
  Question(this.txtQuestion);
  //const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.blueGrey,
      child: Text(
        txtQuestion,
        style: TextStyle(color: Colors.black, fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
