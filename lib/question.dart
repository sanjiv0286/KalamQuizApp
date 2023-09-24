import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionstr;

  const Question(this.questionstr, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionstr,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
