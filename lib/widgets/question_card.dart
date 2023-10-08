import 'package:flutter/material.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/models/question_model.dart';
import 'package:quiz/widgets/options.dart';

class QuestionCard extends StatelessWidget {
  final dynamic onPressed;
  final int questionIndex;
  final int counter;
  final dynamic onCorrectPress;
  QuestionCard(
      {super.key,
      required this.onPressed,
      required this.questionIndex,
      required this.counter,
      required this.onCorrectPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white),
      child: Column(
        children: [
          Text(
            question_list[questionIndex]['questions'],
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Options(
            optionIndex: 0,
            onPressed: onPressed,
            questionIndex: questionIndex,
            onCorrectPress: onCorrectPress,
          ),
          Options(
            optionIndex: 1,
            onPressed: onPressed,
            questionIndex: questionIndex,
            onCorrectPress: onCorrectPress,
          ),
          Options(
            optionIndex: 2,
            onPressed: onPressed,
            questionIndex: questionIndex,
            onCorrectPress: onCorrectPress,
          ),
          Options(
            optionIndex: 3,
            onPressed: onPressed,
            questionIndex: questionIndex,
            onCorrectPress: onCorrectPress,
          ),
          SizedBox(
            height: kDefaultPadding * 1.25,
          )
        ],
      ),
    );
  }
}
