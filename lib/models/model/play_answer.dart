// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_answer.freezed.dart';

@freezed
class PlayAnswer with _$PlayAnswer {
  const factory PlayAnswer({
    required String answer,
    required String answersKanji,
  }) = _PlayAnswer;
}
