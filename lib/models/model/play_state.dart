// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_state.freezed.dart';

@freezed
class PlayState with _$PlayState {
  const factory PlayState({
    @Default([]) List<String> questions,
    required String answers,
    required String answersKanji,
    @Default([]) List<String> usedWords,
  }) = _PlayState;
}
