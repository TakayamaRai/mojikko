// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayState {
  List<String> get questions => throw _privateConstructorUsedError;
  String get answers => throw _privateConstructorUsedError;
  String get answersKanji => throw _privateConstructorUsedError;
  List<String> get usedWords => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayStateCopyWith<PlayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayStateCopyWith<$Res> {
  factory $PlayStateCopyWith(PlayState value, $Res Function(PlayState) then) =
      _$PlayStateCopyWithImpl<$Res, PlayState>;
  @useResult
  $Res call(
      {List<String> questions,
      String answers,
      String answersKanji,
      List<String> usedWords});
}

/// @nodoc
class _$PlayStateCopyWithImpl<$Res, $Val extends PlayState>
    implements $PlayStateCopyWith<$Res> {
  _$PlayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? answers = null,
    Object? answersKanji = null,
    Object? usedWords = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as String,
      answersKanji: null == answersKanji
          ? _value.answersKanji
          : answersKanji // ignore: cast_nullable_to_non_nullable
              as String,
      usedWords: null == usedWords
          ? _value.usedWords
          : usedWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayStateCopyWith<$Res> implements $PlayStateCopyWith<$Res> {
  factory _$$_PlayStateCopyWith(
          _$_PlayState value, $Res Function(_$_PlayState) then) =
      __$$_PlayStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> questions,
      String answers,
      String answersKanji,
      List<String> usedWords});
}

/// @nodoc
class __$$_PlayStateCopyWithImpl<$Res>
    extends _$PlayStateCopyWithImpl<$Res, _$_PlayState>
    implements _$$_PlayStateCopyWith<$Res> {
  __$$_PlayStateCopyWithImpl(
      _$_PlayState _value, $Res Function(_$_PlayState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? answers = null,
    Object? answersKanji = null,
    Object? usedWords = null,
  }) {
    return _then(_$_PlayState(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as String,
      answersKanji: null == answersKanji
          ? _value.answersKanji
          : answersKanji // ignore: cast_nullable_to_non_nullable
              as String,
      usedWords: null == usedWords
          ? _value._usedWords
          : usedWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_PlayState implements _PlayState {
  const _$_PlayState(
      {final List<String> questions = const [],
      required this.answers,
      required this.answersKanji,
      final List<String> usedWords = const []})
      : _questions = questions,
        _usedWords = usedWords;

  final List<String> _questions;
  @override
  @JsonKey()
  List<String> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final String answers;
  @override
  final String answersKanji;
  final List<String> _usedWords;
  @override
  @JsonKey()
  List<String> get usedWords {
    if (_usedWords is EqualUnmodifiableListView) return _usedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usedWords);
  }

  @override
  String toString() {
    return 'PlayState(questions: $questions, answers: $answers, answersKanji: $answersKanji, usedWords: $usedWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayState &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.answers, answers) || other.answers == answers) &&
            (identical(other.answersKanji, answersKanji) ||
                other.answersKanji == answersKanji) &&
            const DeepCollectionEquality()
                .equals(other._usedWords, _usedWords));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questions),
      answers,
      answersKanji,
      const DeepCollectionEquality().hash(_usedWords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayStateCopyWith<_$_PlayState> get copyWith =>
      __$$_PlayStateCopyWithImpl<_$_PlayState>(this, _$identity);
}

abstract class _PlayState implements PlayState {
  const factory _PlayState(
      {final List<String> questions,
      required final String answers,
      required final String answersKanji,
      final List<String> usedWords}) = _$_PlayState;

  @override
  List<String> get questions;
  @override
  String get answers;
  @override
  String get answersKanji;
  @override
  List<String> get usedWords;
  @override
  @JsonKey(ignore: true)
  _$$_PlayStateCopyWith<_$_PlayState> get copyWith =>
      throw _privateConstructorUsedError;
}
