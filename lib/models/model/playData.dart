// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playData.freezed.dart';
part 'playData.g.dart';

@freezed
class PlayData with _$PlayData {
  const factory PlayData({
    @Default([]) List<String> questions,
    required String answers,
    required String answersKanji,
    @Default([]) List<String> usedWords,
  }) = _PlayData;

  factory PlayData.fromJson(Map<String, dynamic> json) => _$PlayDataFromJson(json);
}
