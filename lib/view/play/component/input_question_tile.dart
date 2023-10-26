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

    for (int i=0; i<words.length; i++) {
      if(words[i] == ' ') words[i] = '-';
      widgets.add(
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(i==0 ? 50 :0),
                bottomLeft: Radius.circular(i==0 ? 50 :0),
                topRight: Radius.circular(i==words.length-1 ? 50 :0),
                bottomRight: Radius.circular(i==words.length-1 ? 50 :0),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2, 2),
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Center(child: MyText.p12normal(text: words[i],color: MyColors.black)),
          )
      );
    }
    return widgets;
  }
}
