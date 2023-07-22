import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

class WelcomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/back1.png'),
        fit: BoxFit.cover,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(padding: EdgeInsets.only(top: 200)),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientLetter('W'),
              GradientLetter('O'),
              GradientLetter('R'),
              GradientLetter('D'),
              GradientText('game', 31.6),
            ],
          ));
         Expanded(child: GradientText())],
      ),
    )));
  }
}
