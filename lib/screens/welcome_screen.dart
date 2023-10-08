import 'package:flutter/material.dart';
import 'package:quiz/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset("assets/bg.svg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill),
          Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 2,),
                Text(
                  "Let's Play a Quiz!",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Enter your information below",
                ),
                Spacer(),
                SizedBox(
                  height: kDefaultPadding,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Name..",
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75),
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Let's Start the Quiz!",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.black),
                    ),
                  ),
                ),
                Spacer(flex: 2,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
