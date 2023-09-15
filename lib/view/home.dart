import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/data/color.dart';
import 'package:mojikko/data/dictionary.dart';
import 'package:mojikko/models/local/shared_preferences.dart';
import 'package:mojikko/models/model/play_data.dart';
import 'package:mojikko/models/model/play_answer.dart';
import 'package:mojikko/view/component/button.dart';
import 'package:mojikko/view/component/scroll_view.dart';
import 'package:mojikko/view/component/text.dart';
import 'package:mojikko/view/play/play.dart';


class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answerChildIndex = SharedPreferencesUtil.getInt(SPKeys.childAnswer);
    final answerGeneralIndex = SharedPreferencesUtil.getInt(SPKeys.generalAnswer);
    return MyScrollView(
      child: Column(
        children: [
          MyText.p12bold(text: "子供向け"),
          ColorButton(
              backgroundColor: MyColors.primary,
              onPressed: ()=> _onPressChild(context,answerChildIndex),
              child: MyText.p12normal(text: "${answerChildIndex + 1}/50",color: MyColors.white)),
          const SizedBox(height: 30,),
          MyText.p12bold(text: "一般向け"),
          ColorButton(
              backgroundColor: MyColors.primary,
              onPressed: ()=> _onPressGeneral(context,answerGeneralIndex),
              child: MyText.p12normal(text: "${answerGeneralIndex + 1}/50",color: MyColors.white)
          ),
        ],
      ),
    );
  }

  _onPressChild(BuildContext context, int i) {
    final playAnswer = PlayAnswer(
        answer: Dictionary.childAnswers.keys.elementAt(i),
        answersKanji: Dictionary.childAnswers.values.elementAt(i),
        );
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) =>
          PlayPage(playAnswer: playAnswer)),);
  }

  _onPressGeneral(BuildContext context, int i) {
    final playAnswer = PlayAnswer(
      answer: Dictionary.childAnswers.keys.elementAt(i),
      answersKanji: Dictionary.childAnswers.values.elementAt(i),);
    Navigator.of(context).push(
        MaterialPageRoute<void>(builder: (_) =>
            PlayPage(playAnswer: playAnswer)),);
  }
}
