import 'package:flutter/material.dart';
import 'package:stateful_fun/components/quiz_question.dart';
import 'package:stateful_fun/components/response_row.dart';

class QuizTile extends StatefulWidget {
  const QuizTile(
      {super.key, required this.totalQuestions, required this.questionIndex, required this.question});

  final QuizQuestion question;
  final int questionIndex;
  final int totalQuestions;

  @override
  State<QuizTile> createState() => _QuizTileState();
}

class _QuizTileState extends State<QuizTile> {
  late bool _isAnswered = false;

  void setIsAnswered(answered) {
    _isAnswered = answered;
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Question " + (widget.questionIndex + 1).toString() + " of " + widget.totalQuestions.toString(),
            style: TextStyle(
              fontSize: 18,

            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Image.asset(widget.question.imagePath, width: double.infinity,),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Text(
            widget.question.imageCredit,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            widget.question.getQuestion(),
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(height: 20),
        ListView.builder(
            itemCount: widget.question.responses.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return (ResponseRow(
                  response_index: index,
                  correct_index: widget.question.getCorrectResponseIndex(),
                  responseText: widget.question.responses[index].toString()));
            }),
        _isAnswered ? Text("explainer") : Text(""),
      ],
    ));
  }
}
