import 'package:flutter/material.dart';
import 'package:mojikko/data/color.dart';
import 'package:mojikko/view/component/text.dart';

class InputQuestionTile extends StatelessWidget {
  const InputQuestionTile({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Row(children: _wordTiles(question),);
  }

  List<Widget> _wordTiles(String questions) {
    final List<Widget> widgets=[];
    final words = questions.padRight(5,' ').split('');
    for (var word in words) {
      if(word == ' ') word = '-';
      widgets.add(
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: MyColors.background,
              border: Border.all(color: MyColors.primary),
            ),
            child: Center(child: MyText.p12normal(text: word,color: MyColors.white)),
          )
      );
    }
    return widgets;
  }
}
