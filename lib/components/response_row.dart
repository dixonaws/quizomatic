import 'package:flutter/material.dart';
import 'package:stateful_fun/components/quiz_tile.dart';

class ResponseRow extends StatefulWidget {
  const ResponseRow(
      {super.key,
      required this.correct_index,
      required this.response_index,
      required this.responseText});

  final String responseText;
  final response_index;
  final correct_index;

  @override
  State<ResponseRow> createState() => _ResponseRowState();
}

class _ResponseRowState extends State<ResponseRow> {
  late bool _answered_correctly = false;
  late bool _answered = false;

  void checkAnswer(index) {
    print(index);

    setState(() {
      _answered = true;

      if (index == widget.correct_index) {
        _answered_correctly = true;
      }
    });
  }

  BoxDecoration getResponseRowDecoration() {
    if (_answered_correctly) {
      return (BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.green[200]));
    } else if (_answered && !_answered_correctly) {
      return (BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red[200]));
    } else if (!_answered) {
      return (BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[200]));
    }

    return (BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.grey[200]));
  }

  Icon getAnsweredCorrectlyIcon() {
    if (!_answered_correctly && _answered) {
      return (Icon(Icons.not_interested));
    } else if (_answered_correctly && _answered) {
      return (Icon(Icons.check));
    }

    return (Icon(
      Icons.check,
      color: Colors.grey[200],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.only(bottom: 14, right: 24, left: 24),
      child: InkWell(
        onTap: () {
          checkAnswer(widget.response_index);
        },
        child: Container(
          decoration: getResponseRowDecoration(),
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.responseText,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              Text(
                '',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
              // _answered_correctly ? Icon(Icons.check) : Text(""),
              getAnsweredCorrectlyIcon()
            ],
          ),
        ),
      ),
    ));
  }
}
