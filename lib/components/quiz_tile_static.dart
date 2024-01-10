import 'package:flutter/material.dart';
import 'package:stateful_fun/components/quiz_question.dart';

class QuizTile extends StatelessWidget {
  const QuizTile({super.key, required this.question});

  final QuizQuestion question;

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          // child: Image.asset('lib/images/img1.jpg'),
          child: Image.asset(question.imagePath),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Text(
            question.imageCredit,
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
            question.getQuestion(),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: InkWell(
            onTap: () {
              print("Container tapped.");
            },
            child: Container(
              width: double.infinity,
              color: Colors.red[200],
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctors Without Borders',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'X',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: InkWell(
            onTap: () {
              print("Container tapped.");
            },
            child: Container(
              width: double.infinity,
              color: Colors.grey[300],
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'The International Red Cross',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: InkWell(
            onTap: () {
              print("Container tapped.");
            },
            child: Container(
              width: double.infinity,
              color: Colors.grey[300],
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'The Palestinian Authority',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: InkWell(
            onTap: () {
              print("Container tapped.");
            },
            child: Container(
              width: double.infinity,
              color: Colors.grey[300],
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'The United Nations',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: InkWell(
            onTap: () {
              print("Container tapped.");
            },
            child: Container(
              width: double.infinity,
              color: Colors.grey[300],
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'The Vatican',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(
            'Incorrect. \n\nIt was the United Nations. U.N. officials and agencies have offered some of the strongest criticism of the war in Gaza, describing it as a graveyard for children. Instead of automatically approving visas, Israel will consider each visa “case by case,” a government spokesman said.',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    ));
  }
}
