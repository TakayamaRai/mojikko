// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_index.freezed.dart';

@freezed
class AnswerIndex with _$AnswerIndex {
  const factory AnswerIndex({
    @Default(0) int childIndex,
    @Default(0) int generalIndex,
  }) = _AnswerIndex;
}
