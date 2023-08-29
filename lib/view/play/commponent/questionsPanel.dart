import 'package:flutter/material.dart';

class QuestionsPanel extends StatelessWidget {
  const QuestionsPanel({super.key, required this.questions});
  final List<String> questions;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _questionTiles(0,4,questions),
        _questionTiles(0,4,questions),
      ],
    )
  }

  Widget _questionTiles(int start, int end) {
    final List<Widget> tiles = [];
    for(int i=start; i<end; i++){
      tiles.add(_questionTile(questions[i]));
    }
    return Column(children: tiles,);
  }

  Widget _questionTile(String question) {
    if(question == ''){

    }
    final words = question.split('');
    words.forEach((word) {

    });
  }
}
