import 'package:hooks_riverpod/hooks_riverpod.dart';

final playViewModelProvider = AutoDisposeNotifierProvider<PlayViewModel, PlayState>(
  PlayViewModel.new,
  name: 'playViewModel',
);

class PlayState{
  String inputAnswer = '';
  String errorTextOfInputAnswer = '';
}

class PlayViewModel extends AutoDisposeNotifier<PlayState> {
  @override
  PlayState build() {
    return PlayState();
  }
  void validatorInputAnswer(String input){
    if(input.length != 5){
      state = (state.errorTextOfInputAnswer = '5文字を入力してください') as PlayState;
      return;
    }
    if(RegExp(r'[ぁ-んァ-ン]+$').hasMatch(input)){
      state = (state.errorTextOfInputAnswer = 'ひらがなまたはカタカナのみで入力してください') as PlayState;
      return;
    }
    if(RegExp(r'[ァ-ン]+$').hasMatch(input)){
      input = input.replaceAllMapped(RegExp('[ァ-ン]'),
              (Match m) => String.fromCharCode(m.group(0)!.codeUnitAt(0) - 0x60));
    }

    state = (state.inputAnswer = input) as PlayState;
    state = (state.errorTextOfInputAnswer = input) as PlayState;
  }

}