import 'package:flutter/material.dart';
import 'package:mojikko/data/enum.dart';
import 'package:mojikko/view/play/commponent/word_tile.dart';

class AnswerKeyboard extends StatelessWidget {
  AnswerKeyboard({
    super.key,
    required this.wordsStatus,
    required this.onPressKeyboard,
});
  final Map<String, WordStatus> wordsStatus;
  final Function(String) onPressKeyboard;
  final keyboardsGen = [
    ['わ','を','ん',' ',' ',],
    ['ら','り','る','れ','ろ',],
    ['や',' ','ゆ',' ','よ',],
    ['ま','み','む','め','も',],
    ['は','ひ','ふ','へ','ほ',],
    ['な','に','ぬ','ね','の',],
    ['た','ち','つ','て','と',],
    ['さ','し','す','せ','そ',],
    ['か','き','く','け','こ',],
    ['あ','い','う','え','お',],
  ];
  final keyboardsDakutenn = [
    [' ',' ',' ',' ',' ',],
    [' ',' ',' ',' ',' ',],
    [' ',' ',' ',' ',' ',],
    ['ゃ','ゅ','ょ','っ','ー',],
    ['ぱ','ぴ','ぷ','ぺ','ぽ',],
    ['ば','び','ぶ','べ','ぼ',],
    ['だ','ぢ','づ','で','ど',],
    ['ざ','じ','ず','ぜ','ぞ',],
    ['が','ぎ','ぐ','げ','ご',],
    ['ぁ','ぃ','ぅ','ぇ','ぉ',],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _wordsKeyboard(context: context, words: keyboardsGen),
        const SizedBox(height: 10,),
        _wordsKeyboard(context: context, words: keyboardsDakutenn),
      ],
    );
  }

  Widget _wordsKeyboard({required BuildContext context,required List<List<String>> words}) {
    List<Widget> columnTiles = [];
    final List<Widget> rowTiles = [];

    for (var column in words) {
      for(var word in column){
        columnTiles.add(
            GestureDetector(
                onTap: () => onPressKeyboard(word),
                child: WordTile(
                    width: (MediaQuery.of(context).size.width-90)/10,
                    wordsStatus: wordsStatus, word: word)));
        columnTiles.add(const SizedBox(height: 5,));
      }
      rowTiles.add(Column(children: columnTiles,));
      rowTiles.add(const SizedBox(width: 5,));
      columnTiles = [];
    }
    return Row(children: rowTiles,);
  }
}
