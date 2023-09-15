import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/data/enum.dart';
import 'package:mojikko/models/model/play_answer.dart';
import 'package:mojikko/models/model/play_data.dart';

final playViewModelProvider = AutoDisposeNotifierProvider<PlayViewModel, PlayData>(
  PlayViewModel.new,
  name: 'playViewModel',
);

class PlayViewModel extends AutoDisposeNotifier<PlayData> {
  @override
  PlayData build() {
    return const PlayData();
  }
  void validatorInputAnswer(){
    var questions = state.questions[state.questionIndex];
    if(questions.length != 5){
      state = state.copyWith(errorTextOfInputAnswer: '5文字を入力してください');
      return;
    }
    if(RegExp(r'^[ぁ-んァ-ン]+$').hasMatch(questions)){
      state = state.copyWith(errorTextOfInputAnswer: 'ひらがなまたはカタカナのみで入力してください');
      return;
    }
    if(RegExp(r'[ァ-ン]+$').hasMatch(questions)){
      questions = questions.replaceAllMapped(RegExp('[ァ-ン]'),
              (Match m) => String.fromCharCode(m.group(0)!.codeUnitAt(0) - 0x60));
    }
    state = state.copyWith(errorTextOfInputAnswer: '');
  }

  updateWordStatus(PlayAnswer playAnswer){
    var status = WordStatus.none;
    var indexAnswer = 0;
    var word = "";

    final words = state.questions[state.questionIndex].split('');
    for (int indexQuestions=0; indexQuestions<words.length; indexQuestions++) {
      word = words[indexQuestions];
      // 文字も場所も合ってる場合はスルー
      if(state.wordsStatus[word] == WordStatus.exactPosition) return;

      status = WordStatus.none;
      indexAnswer = playAnswer.answer.indexOf(word);
      //文字が存在して合っているか
      if(indexAnswer == indexQuestions){
        status = WordStatus.exactPosition;
      }else if(indexAnswer != -1){
        status = WordStatus.existWord;
      }
      final newWordsStatus = state.wordsStatus;
      newWordsStatus[word] = status;
      state = state.copyWith(wordsStatus: newWordsStatus, questionIndex: state.questionIndex+1);
    }
  }

  onPressDelete() {
    final newQuestions = List.of(state.questions);
    newQuestions[state.questionIndex] = "";
    state = state.copyWith(questions: newQuestions);
  }

  bool onPressEnter({required PlayAnswer playAnswer}) {
    validatorInputAnswer();
    if(state.errorTextOfInputAnswer.isNotEmpty) return false;
    updateWordStatus(playAnswer);
    return containAnswer(playAnswer);
  }

  bool containAnswer(PlayAnswer playAnswer) {
    return (playAnswer.answer == state.questions[state.questionIndex]);
  }

  onPressKeyboard(String word) {
    final newQuestions = List.of(state.questions);
    newQuestions[state.questionIndex].replaceAll(' ', '');
    if(newQuestions[state.questionIndex].length == 5){
      newQuestions[state.questionIndex] = newQuestions[state.questionIndex].replaceRange(4,null, word);
    }else{
      newQuestions[state.questionIndex] = newQuestions[state.questionIndex]+word;
    }

    state = state.copyWith(questions: newQuestions);
  }

}