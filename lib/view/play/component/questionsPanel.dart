import 'package:flutter/material.dart';
import 'package:mojikko/data/enum.dart';
import 'package:mojikko/models/model/play_data.dart';
import 'package:mojikko/view/play/component/word_tile.dart';

class QuestionsPanel extends StatelessWidget {
  const QuestionsPanel({super.key, required this.playData, required this.questionsStatus});
  final PlayData playData;
  final List<Map<String,WordStatus>> questionsStatus;

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

  Widget _questionTiles({
    required BuildContext context,
    required int start,
    required int end,}) {
    final List<Widget> tiles = [];
    for(int i=start; i<end; i++){
      final Map<String,WordStatus> questionStatus = (i < questionsStatus.length) ?questionsStatus[i] : {};
      tiles.add(_questionTile(context: context, questionStatus: questionStatus));
      tiles.add(const SizedBox(height: 3,));
    }
    return Column(children: tiles,);
  }

  Widget _questionTile({
    required BuildContext context,
    required Map<String,WordStatus> questionStatus}) {

    final List<Widget> tiles = [];
    questionStatus.forEach((word, status) {
      tiles.add(
          WordTile(
              width: (MediaQuery.of(context).size.width -80)/10,
              wordsStatus: questionStatus,
              word: word));
      tiles.add(const SizedBox(width: 3,));
    });
    // 空白埋め
    for(int i=0; i<5-questionStatus.length; i++){
      tiles.add(
          WordTile(
              width: (MediaQuery.of(context).size.width -80)/10,
              wordsStatus: questionStatus,
              word: ' '));
      tiles.add(const SizedBox(width: 3,));
    }

    return Row(children: tiles,);
  }
}
