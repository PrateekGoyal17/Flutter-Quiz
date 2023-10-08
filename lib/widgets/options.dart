import 'package:flutter/material.dart';
import 'package:quiz/models/question_model.dart';

class Options extends StatelessWidget {
  final int optionIndex;
  final dynamic onPressed;
  final int questionIndex;
  final dynamic onCorrectPress;
  Options(
      {super.key,
      required this.optionIndex,
      required this.onPressed,
      required this.questionIndex,
      required this.onCorrectPress});

  void correctPick() {
    int answerIndex = question_list[questionIndex]['answer_index'];
    onPressed();
    if ((question_list[questionIndex]['options'][optionIndex]) ==
        (question_list[questionIndex]['options'][answerIndex])) {
      onCorrectPress();
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: correctPick,
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(top: 20.0),
        padding: EdgeInsets.all(23.0),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 140, 133, 133)),
          borderRadius: BorderRadius.circular(20.0),
          // color: widget.optionFilledColor,
        ),
        child: Text(
          "${optionIndex + 1}. ${question_list[questionIndex]['options'][optionIndex]}",
          style: const TextStyle(
              color: Color.fromARGB(255, 41, 37, 37), fontSize: 16),
        ),
      ),
    );
  }
}
