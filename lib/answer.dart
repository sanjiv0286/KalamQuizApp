// import 'package:flutter/material.dart';

// class Answer extends StatelessWidget {
//   final Function choosen;
//   final String answer;
//   const Answer(this.choosen, this.answer, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 0.0),
//       child: RaisedButton(
//         color: Colors.blue,
//         //textColor: Colors.white,
//         child: new Text(
//           answer,
//           style: new TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         onPressed: choosen,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function choosen;
  final String answer;

  const Answer(this.choosen, this.answer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 0.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          // Uncomment the line below to set the text color
          // onPrimary: Colors.white,
        ),
        onPressed: () => choosen(),
        child: Text(
          answer,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
