import 'package:flutter/material.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/models/question_model.dart';
import 'package:quiz/screens/score_screen.dart';
import 'package:quiz/widgets/question_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int questionIndex = 0;
  int counter = 0;
  onPressed() {
    setState(() {
      if (questionIndex < question_list.length) {
        questionIndex = questionIndex + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (questionIndex == question_list.length) {
      return ScoreScreen(score: counter);
    } else {
      return Stack(
        children: [
          WebsafeSvg.asset("assets/bg.svg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text.rich(
                  TextSpan(
                    text: "Question ${questionIndex + 1}",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: "/${question_list.length}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: kSecondaryColor),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                QuestionCard(
                  onPressed: onPressed,
                  questionIndex: questionIndex,
                  counter: counter,
                  onCorrectPress: () {
                    setState(() {
                      counter++;
                      print(counter);
                    });
                  },
                ),
              ],
            ),
          ))
        ],
      );
    }
  }
}
