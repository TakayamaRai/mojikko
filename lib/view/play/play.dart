// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/models/model/play_answer.dart';
import 'package:mojikko/view/component/scroll_view.dart';
import 'package:mojikko/view/play/commponent/AnswerKeyboard.dart';
import 'package:mojikko/view/play/commponent/input_field.dart';
import 'package:mojikko/view/play/commponent/questionsPanel.dart';
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
          QuestionsPanel(playData: playData,),
          const SizedBox(height: 10,),
          InputField(
              question: playData.questions[playData.questionIndex],
              onPressDelete: ()=> stateNotifier.onPressDelete(),
              onPressEnter: (){
                final result = stateNotifier.onPressEnter(playAnswer: playAnswer);
                if(result){
                  print("DONE");
                }else{
                  print("NOT");
                }
              }),
          const SizedBox(height: 15,),
          AnswerKeyboard(
            wordsStatus: playData.wordsStatus,
            onPressKeyboard: (word)=> stateNotifier.onPressKeyboard(word),
          ),
        ],
      ),
    );
  }
}
