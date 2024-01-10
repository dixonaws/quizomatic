import 'package:flutter/material.dart';

class QuizQuestion {
  QuizQuestion({required this.explainer, required this.imageCredit, required this.imagePath, required this.question, required this.responses, required this.correctResponseIndex});

  final String imagePath;
  final String question;
  final String imageCredit;
  final int correctResponseIndex;
  final List responses;
  final String explainer;

  String getQuestion() {
    return this.question;
  }

  int getCorrectResponseIndex() {
    return correctResponseIndex;
  }

  List getResponses() {
    return responses;
  }

  @override
  String toString() {
    return(this.question + "; " + this.responses.toString() + "; correct=" + this.correctResponseIndex.toString());
  } // toString

} // QuizQuestion


