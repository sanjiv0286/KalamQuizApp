// import 'package:flutter/material.dart';

// class Result extends StatelessWidget {
//   @override
//   final int totalscore;
//   final Function _reset;
//   Result(this.totalscore, this._reset);

//   String rs() {
//     String s = 'You Total Score is:';
//     if (totalscore >= 30)
//       s = 'Awesome !! You Total Score is: $totalscore';
//     else if (totalscore >= 22)
//       s = 'Better !! You Total Score is: $totalscore';
//     else if (totalscore >= 15)
//       s = 'Good !! You Total Score is: $totalscore';
//     else if (totalscore >= 7)
//       s = 'Average !! You Total Score is: $totalscore';
//     else
//       s = 'Poor !! You Total Score is: $totalscore';

//     return s;
//   }

//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           FittedBox(
//             child: Container(
//               margin: EdgeInsets.all(4),
//               color: Colors.white,
//               child: Text(
//                 rs(),
//                 style: new TextStyle(
//                   fontSize: 30.0,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(15),
//             child: RaisedButton(
//               padding:
//                   EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
//               color: Colors.lightGreenAccent,
//               child: Text(
//                 'Restart Quiz',
//                 style: new TextStyle(
//                   fontSize: 35.0,
//                   color: Colors.red,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               textColor: Colors.yellow,
//               onPressed: _reset,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// =============================================

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function _reset;

  const Result(this.totalScore, this._reset, {super.key});

  String getResultPhrase() {
    if (totalScore >= 30) {
      return 'Awesome!!';
    } else if (totalScore >= 22)
      // ignore: curly_braces_in_flow_control_structures
      return 'Better!';
    else if (totalScore >= 15)
      // ignore: curly_braces_in_flow_control_structures
      return 'Good';
    else if (totalScore >= 7)
      // ignore: curly_braces_in_flow_control_structures
      return 'Average';
    else
      // ignore: curly_braces_in_flow_control_structures
      return 'Poor';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Your Total Score is:',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$totalScore',
            style: const TextStyle(
              fontSize: 50.0,
              color: Colors.blue, // Adjust the color to your preference
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            getResultPhrase(),
            style: const TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0), // Add some spacing
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreenAccent,
              padding: const EdgeInsets.all(15.0),
            ),
            onPressed: () {
              _reset();
            },
            child: const Text(
              'Restart Quiz',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
