import 'package:flutter/material.dart';

import '../widgets/question_smart_retina.dart';

class SmartRetina extends StatelessWidget {
  const SmartRetina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          primary: true, centerTitle: true, title: const Text("Smart Retina")),
      body: Center(
        child: ListView(
          children: [
            QuestionSmartRetina(
              question: 'Do you not suffer from diabetes',
              function: () {},
            ),
            QuestionSmartRetina(
              question: 'Do you not suffer from diabetes',
              function: () {},
            ),
            QuestionSmartRetina(
              question: 'Do you not suffer from diabetes',
              function: () {},
            ),
          ],
        ),
      ),
    );
  }
}
