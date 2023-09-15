// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayAnswer {
  String get answer => throw _privateConstructorUsedError;
  String get answersKanji => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayAnswerCopyWith<PlayAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayAnswerCopyWith<$Res> {
  factory $PlayAnswerCopyWith(
          PlayAnswer value, $Res Function(PlayAnswer) then) =
      _$PlayAnswerCopyWithImpl<$Res, PlayAnswer>;
  @useResult
  $Res call({String answer, String answersKanji});
}

/// @nodoc
class _$PlayAnswerCopyWithImpl<$Res, $Val extends PlayAnswer>
    implements $PlayAnswerCopyWith<$Res> {
  _$PlayAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? answersKanji = null,
  }) {
    return _then(_value.copyWith(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      answersKanji: null == answersKanji
          ? _value.answersKanji
          : answersKanji // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayAnswerCopyWith<$Res>
    implements $PlayAnswerCopyWith<$Res> {
  factory _$$_PlayAnswerCopyWith(
          _$_PlayAnswer value, $Res Function(_$_PlayAnswer) then) =
      __$$_PlayAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String answer, String answersKanji});
}

/// @nodoc
class __$$_PlayAnswerCopyWithImpl<$Res>
    extends _$PlayAnswerCopyWithImpl<$Res, _$_PlayAnswer>
    implements _$$_PlayAnswerCopyWith<$Res> {
  __$$_PlayAnswerCopyWithImpl(
      _$_PlayAnswer _value, $Res Function(_$_PlayAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? answersKanji = null,
  }) {
    return _then(_$_PlayAnswer(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      answersKanji: null == answersKanji
          ? _value.answersKanji
          : answersKanji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlayAnswer implements _PlayAnswer {
  const _$_PlayAnswer({required this.answer, required this.answersKanji});

  @override
  final String answer;
  @override
  final String answersKanji;

  @override
  String toString() {
    return 'PlayAnswer(answer: $answer, answersKanji: $answersKanji)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayAnswer &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.answersKanji, answersKanji) ||
                other.answersKanji == answersKanji));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer, answersKanji);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayAnswerCopyWith<_$_PlayAnswer> get copyWith =>
      __$$_PlayAnswerCopyWithImpl<_$_PlayAnswer>(this, _$identity);
}

abstract class _PlayAnswer implements PlayAnswer {
  const factory _PlayAnswer(
      {required final String answer,
      required final String answersKanji}) = _$_PlayAnswer;

  @override
  String get answer;
  @override
  String get answersKanji;
  @override
  @JsonKey(ignore: true)
  _$$_PlayAnswerCopyWith<_$_PlayAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
