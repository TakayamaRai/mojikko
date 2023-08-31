// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_data.freezed.dart';

@freezed
class PlayData with _$PlayData {
  const factory PlayData({
    @Default([]) List<String> questions,
    required String answers,
    required String answersKanji,
    @Default([]) List<String> usedWords,
  }) = _PlayData;

}
