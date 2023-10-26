import 'package:flutter/material.dart';
import 'package:mojikko/data/enum.dart';
import 'package:mojikko/view/component/text.dart';
import 'package:mojikko/view/play/commponent/word_tile.dart';

class ExamplePanel extends StatelessWidget {
  const ExamplePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WordTile(
            width: (MediaQuery.of(context).size.width - 80) / 10,
            wordsStatus: const {'あ': WordStatus.none},
            word: 'あ'),
        const SizedBox(width: 5,),
        MyText.p12normal(text: ':ハズレ'),
        const SizedBox(width: 10,),
        WordTile(
            width: (MediaQuery.of(context).size.width - 80) / 10,
            wordsStatus: const {'い': WordStatus.existWord},
            word: 'い'),
        const SizedBox(width: 5,),
        MyText.p12normal(text: ':場所が違う'),
        const SizedBox(width: 10,),
        WordTile(
            width: (MediaQuery.of(context).size.width - 80) / 10,
            wordsStatus: const {'う': WordStatus.exactPosition},
            word: 'う'),
        const SizedBox(width: 5,),
        MyText.p12normal(text: ':文字も場所もアタリ'),
      ],
    );
  }
}
