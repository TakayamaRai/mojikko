import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/models/local/shared_preferences.dart';
import 'package:mojikko/models/model/answer_index.dart';

final homeViewModelProvider = AutoDisposeNotifierProvider<HomeViewModel, AnswerIndex>(
  HomeViewModel.new,
  name: 'homeViewModel',
);

class HomeViewModel extends AutoDisposeNotifier<AnswerIndex> {
  @override
  AnswerIndex build() {
    return const AnswerIndex();
  }

  void setIndex() {
    state = state.copyWith(
      childIndex: SharedPreferencesUtil.getInt(SPKeys.childAnswer),
      generalIndex: SharedPreferencesUtil.getInt(SPKeys.generalAnswer),
    );
  }

  void incrementChildIndex() {
    state = state.copyWith(childIndex: state.childIndex+1);
    SharedPreferencesUtil.setInt(SPKeys.childAnswer,state.childIndex);
  }

  void incrementGeneralIndex() {
    state = state.copyWith(generalIndex: state.generalIndex+1);
    SharedPreferencesUtil.setInt(SPKeys.generalAnswer,state.generalIndex);
  }

}