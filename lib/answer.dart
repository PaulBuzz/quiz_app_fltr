import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 80,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(70.0),
              bottomLeft: Radius.circular(70.0),
              bottomRight: Radius.circular(70.0),
              topLeft: Radius.circular(70.0))),
      child: RaisedButton(
        color: Color.fromARGB(255, 212, 147, 62),
        textColor: Color.fromRGBO(228, 239, 200, 5),
        child: Text(answerText,
            textAlign: TextAlign.justify, style: TextStyle(fontSize: 20)),
        onPressed: selectHandler,
      ),
    );
  }
}
