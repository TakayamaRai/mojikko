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
    var question = state.questions[state.questionIndex];
    if(question.length != 5){
      state = state.copyWith(errorTextOfInputAnswer: '5文字を入力してください');
      return;
    }
    if(!RegExp(r'^[ぁ-んァ-ン]+$').hasMatch(question)){
      state = state.copyWith(errorTextOfInputAnswer: 'ひらがなまたはカタカナのみで入力してください');
      return;
    }
    if(RegExp(r'[ァ-ン]+$').hasMatch(question)){
      question = question.replaceAllMapped(RegExp('[ァ-ン]'),
              (Match m) => String.fromCharCode(m.group(0)!.codeUnitAt(0) - 0x60));
    }
    state = state.copyWith(errorTextOfInputAnswer: '');
  }

  Map<String,WordStatus>compareWordStatus({required PlayAnswer playAnswer, required String question}){
    WordStatus status = WordStatus.none;
    int indexAnswer = 0;
    Map<String,WordStatus> newWordsStatus ={};

    final words = question.split('');
    for (int i=0; i<words.length; i++) {
      status = WordStatus.none;
      indexAnswer = playAnswer.answer.indexOf(words[i]);
      //文字が存在して合っているか
      if(indexAnswer == i){
        status = WordStatus.exactPosition;
      }else if(indexAnswer != -1){
        status = WordStatus.existWord;
      }
      newWordsStatus.addAll({words[i]: status});
    }
    return newWordsStatus;
  }

  updateWordStatus(Map<String, WordStatus> newWordsStatus) {
    final tmpMap = Map.of(state.keyBoardStatus);
    newWordsStatus.forEach((key, value) {
      tmpMap[key]=value;
    });
    state = state.copyWith(keyBoardStatus: tmpMap);
  }

  updateQuestionsStatus(Map<String, WordStatus> newWordsStatus) {
    final tmpList = List.of(state.questionsStatus);
    tmpList[state.questionIndex] = newWordsStatus;
    state = state.copyWith(questionsStatus: tmpList);
  }

  updateQuestionIndex(){
    state = state.copyWith(questionIndex: state.questionIndex+1);
  }

  onPressDelete() {
    final newQuestions = List.of(state.questionsStatus);
    newQuestions[state.questionIndex] = {"":WordStatus.empty};
    state = state.copyWith(questionsStatus: newQuestions);
  }

  bool onPressEnter({required PlayAnswer playAnswer}) {
    validatorInputAnswer();
    if(state.errorTextOfInputAnswer.isNotEmpty) return false;
    final newWordsStatus = compareWordStatus(
        playAnswer: playAnswer,
        question: state.questions[state.questionIndex]);
    updateWordStatus(newWordsStatus);
    updateQuestionsStatus(newWordsStatus);
    updateQuestionIndex();
    return containAnswer(playAnswer);
  }

  bool containAnswer(PlayAnswer playAnswer) {
    return (playAnswer.answer == state.questions[state.questionIndex-1]);
  }

  onPressKeyboard(String word) {
    if(word == ' ') return;
    final newQuestions = List.of(state.questionsStatus);
    // 初回のみ
    if(newQuestions.isEmpty) {
      newQuestions.addAll([{word: WordStatus.empty}]);
      state = state.copyWith(questionsStatus: newQuestions);
      return;
    }
    if(newQuestions.length <= state.questionIndex) {
      newQuestions.addAll([{word: WordStatus.empty}]);
      state = state.copyWith(questionsStatus: newQuestions);
      return;
    }

    final Map<String, WordStatus> thisQuestion = newQuestions[state.questionIndex];
    if(thisQuestion.length == 5){
      thisQuestion.remove(thisQuestion.keys.last);
    }
    newQuestions[state.questionIndex].addAll({word:WordStatus.empty});
    state = state.copyWith(questionsStatus: newQuestions);
  }

}