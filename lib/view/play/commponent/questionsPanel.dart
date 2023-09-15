import 'package:flutter/material.dart';
import 'package:mojikko/data/color.dart';
import 'package:mojikko/data/enum.dart';
import 'package:mojikko/models/model/play_data.dart';
import 'package:mojikko/view/component/text.dart';
import 'package:mojikko/view/play/commponent/word_tile.dart';

class QuestionsPanel extends StatelessWidget {
  const QuestionsPanel({super.key, required this.playData});
  final PlayData playData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _questionTiles(context: context, start: 0, end: 4),
        const SizedBox(width: 10,),
        _questionTiles(context: context, start: 5, end: 9),
      ],
    );
  }

  Widget _questionTiles({required BuildContext context,required int start,required int end}) {
    final List<Widget> tiles = [];
    for(int i=start; i<end; i++){
      tiles.add(_questionTile(context: context, question: playData.questions[i]));
      tiles.add(const SizedBox(height: 3,));
    }
    return Column(children: tiles,);
  }

  Widget _questionTile({required BuildContext context,required String question}) {
    if(question == ''){
      question = '     ';
    }
    final words = question.split('');
    final List<Widget> tiles = [];
    for (var word in words) {
      tiles.add(
          WordTile(
              width: (MediaQuery.of(context).size.width -50)/10,
              wordsStatus: playData.wordsStatus,word: word));
    }
    return Row(children: tiles,);
  }
}
