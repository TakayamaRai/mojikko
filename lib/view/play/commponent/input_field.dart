import 'package:flutter/material.dart';
import 'package:mojikko/data/color.dart';
import 'package:mojikko/view/component/button.dart';
import 'package:mojikko/view/component/text.dart';
import 'package:mojikko/view/play/commponent/input_question_tile.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.question,
    required this.onPressEnter,
    required this.onPressDelete,
  });

  final String question;
  final Function() onPressEnter;
  final Function() onPressDelete;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InputQuestionTile(question: question),
        Row(
          children: [
            ColorButton(
              backgroundColor: MyColors.primary,
              onPressed: onPressEnter,
              child: MyText.p12normal(text: '決定',color: MyColors.white),
            ),
            const SizedBox(width: 10,),
            ColorButton(
              backgroundColor: MyColors.primary,
              onPressed: onPressDelete,
              child: MyText.p12normal(text: '削除',color: MyColors.white),
            ),
          ],
        ),
      ],
    );
  }
}
