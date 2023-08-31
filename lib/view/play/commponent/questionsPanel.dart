import 'package:flutter/material.dart';
import 'package:mojikko/data/color.dart';

class QuestionsPanel extends StatelessWidget {
  const QuestionsPanel({super.key, required this.questions});
  final List<String> questions;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _questionTiles(0,4),
        _questionTiles(5,9),
      ],
    );
  }

  Widget _questionTiles(int start, int end, ) {
    final List<Widget> tiles = [];
    for(int i=start; i<end; i++){
      tiles.add(_questionTile(questions[i]));
    }
    return Column(children: tiles,);
  }

  Widget _questionTile(String question) {
    if(question == ''){
      question = "-----";
    }
    final words = question.split('');
    final List<Widget> tiles = [];
    words.forEach((word) {
      tiles.add(_wordTile(word));
    });
    return Row(children: tiles,);
  }

  Widget _wordTile(String word) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.subText),
      ),
    );
  }
}
