// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/models/model/play_answer.dart';
import 'package:mojikko/models/model/play_data.dart';
import 'package:mojikko/view/component/dialog.dart';
import 'package:mojikko/view/component/scroll_view.dart';
import 'package:mojikko/view/play/component/AnswerKeyboard.dart';
import 'package:mojikko/view/play/component/examplePanel.dart';
import 'package:mojikko/view/play/component/input_field.dart';
import 'package:mojikko/view/play/component/questionsPanel.dart';
import 'package:mojikko/viewmodel/play_viewmodel.dart';

class PlayPage extends ConsumerWidget {
  const PlayPage({super.key, required this.playAnswer});
  final PlayAnswer playAnswer;



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(playViewModelProvider.notifier);
    final playData = ref.watch(playViewModelProvider);

    return MyScrollView(
      child: Column(
        children: [
          const ExamplePanel(),
          const SizedBox(height: 20,),
          QuestionsPanel(playData: playData,questionsStatus: playData.questionsStatus),
          const SizedBox(height: 10,),
          InputField(
              question: playData.questions[playData.questionIndex],
              errorText: playData.errorTextOfInputAnswer,
              onPressDelete: ()=> stateNotifier.onPressDelete(),
              onPressEnter: ()async => _onPressEnter(context: context,stateNotifier: stateNotifier,playData: playData)),
          const SizedBox(height: 15,),
          AnswerKeyboard(
            wordsStatus: playData.keyBoardStatus,
            onPressKeyboard: (word)=> stateNotifier.onPressKeyboard(word),
          ),
        ],
      ),
    );
  }

  _onPressEnter({
    required BuildContext context,
    required PlayViewModel stateNotifier,
    required PlayData playData,
  }) async{
    final result = stateNotifier.onPressEnter(playAnswer: playAnswer);
    if(result){
      await showMyDialog<void>(
        context: context,
        barrierDismissible: false,
        title: '正解',
        content: '${playAnswer.answersKanji}(${playAnswer.answer})',
      );
      Navigator.of(context).pop();
    }else if(playData.questionIndex == 8){
      await showMyDialog<void>(
        context: context,
        barrierDismissible: false,
        title: '不正解',
        content: '正解は...\n${playAnswer.answersKanji}(${playAnswer.answer})でした。',
      );
      Navigator.of(context).pop();
    }
  }


}
