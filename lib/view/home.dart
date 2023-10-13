import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/data/color.dart';
import 'package:mojikko/data/dictionary.dart';
import 'package:mojikko/models/local/shared_preferences.dart';
import 'package:mojikko/models/model/play_answer.dart';
import 'package:mojikko/view/component/button.dart';
import 'package:mojikko/view/component/scroll_view.dart';
import 'package:mojikko/view/component/text.dart';
import 'package:mojikko/view/play/play.dart';
import 'package:mojikko/viewmodel/home_viewmodel.dart';


class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(homeViewModelProvider.notifier);
    final answerIndex = ref.watch(homeViewModelProvider);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        stateNotifier.setIndex();
      });
      return;
      },
      const [],
    );

    return MyScrollView(
      child: Column(
        children: [
          MyText.p12bold(text: "子供向け"),
          ColorButton(
              backgroundColor: MyColors.primary,
              onPressed: (){
                _onPressChild(context,answerIndex.childIndex);
                stateNotifier.incrementChildIndex();
              },
              child: MyText.p12normal(text: "${answerIndex.childIndex + 1}/50",color: MyColors.white)),
          const SizedBox(height: 30,),
          MyText.p12bold(text: "一般向け"),
          ColorButton(
              backgroundColor: MyColors.primary,
              onPressed: () {
                _onPressGeneral(context,answerIndex.generalIndex);
                stateNotifier.incrementGeneralIndex();
              },
              child: MyText.p12normal(text: "${answerIndex.generalIndex + 1}/50",color: MyColors.white)
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
      answer: Dictionary.generalAnswers.keys.elementAt(i),
      answersKanji: Dictionary.generalAnswers.values.elementAt(i),);
    Navigator.of(context).push(
        MaterialPageRoute<void>(builder: (_) =>
            PlayPage(playAnswer: playAnswer)),);
  }
}
