import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/data/enum.dart';
import 'package:mojikko/models/model/play_answer.dart';
import 'package:mojikko/models/model/play_data.dart';
import 'package:mojikko/data/dictionary.dart';

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
    //文字数を確認
    if(question.length != 5){
      state = state.copyWith(errorTextOfInputAnswer: '5文字を入力してください');
      return;
    }
    //ひらがなを確認
    if(!RegExp(r'^[ぁ-んァ-ンー]+$').hasMatch(question)){
      state = state.copyWith(errorTextOfInputAnswer: 'ひらがなまたはカタカナのみで入力してください');
      return;
    }
    //辞書に登録されている言葉かを確認
    final result = Dictionary.questions.contains(question);
    if(!result){
      state = state.copyWith(errorTextOfInputAnswer: '辞書にない言葉です');
      return;
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

  updateKeyBoardStatus(Map<String, WordStatus> newWordsStatus) {
    final tmpMap = Map.of(state.keyBoardStatus);
    newWordsStatus.forEach((key, value) {
      if(tmpMap[key] == WordStatus.exactPosition) return;
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
    newQuestions[state.questionIndex] = {};
    state = state.copyWith(questionsStatus: newQuestions);
  }

  bool onPressEnter({required PlayAnswer playAnswer}) {
    validatorInputAnswer();
    if(state.errorTextOfInputAnswer.isNotEmpty) return false;
    final newWordsStatus = compareWordStatus(
        playAnswer: playAnswer,
        question: state.questions[state.questionIndex]);
    updateKeyBoardStatus(newWordsStatus);
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
    if(newQuestions.length <= state.questionIndex) {
      newQuestions.addAll([{word: WordStatus.empty}]);
      state = state.copyWith(questionsStatus: newQuestions);
      return;
    }
    // 同じ文字は入れれない
    if(newQuestions[state.questionIndex].containsKey(word)){
      state = state.copyWith(errorTextOfInputAnswer: '『$word』は既に使用されています');
      return;
    }
    // 5文字目は最後の文字を消去
    final Map<String, WordStatus> thisQuestion = newQuestions[state.questionIndex];
    if(thisQuestion.length == 5){
      thisQuestion.remove(thisQuestion.keys.last);
    }
    newQuestions[state.questionIndex].addAll({word:WordStatus.empty});
    state = state.copyWith(questionsStatus: newQuestions);
    if(state.errorTextOfInputAnswer.isNotEmpty){
      state = state.copyWith(errorTextOfInputAnswer: '');
    }
  }

}