// import 'package:flutter/material.dart';

// import './question.dart';

// import './answer.dart';

// class Quiz extends StatelessWidget {
//   final List<Map<String, Object>> questionList;
//   final Function clickedbutt;
//   final int index;

//   const Quiz(this.questionList, this.index, this.clickedbutt, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Question(
//           questionList[index]['QuestionText'],
//         ),
//         ...(questionList[index]['answer'] as List<Map<String, Object>>).map(
//           (answer) {
//             return Answer(() => clickedbutt(answer['score']), answer['text']);
//           },
//         ).toList(),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final Function clickedbutt;
  final int index;

  const Quiz(this.questionList, this.index, this.clickedbutt, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionList[index]['QuestionText']
              as String, // Use as String to assert non-null
        ),
        ...(questionList[index]['answer'] as List<Map<String, Object>>).map(
          (answer) {
            return Answer(() => clickedbutt(answer['score']),
                answer['text'] as String); // Use as String to assert non-null
          },
        ).toList(),
      ],
    );
  }
}
