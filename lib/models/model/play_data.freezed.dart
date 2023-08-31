// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayData {
  List<String> get questions => throw _privateConstructorUsedError;
  String get answers => throw _privateConstructorUsedError;
  String get answersKanji => throw _privateConstructorUsedError;
  List<String> get usedWords => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayDataCopyWith<PlayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayDataCopyWith<$Res> {
  factory $PlayDataCopyWith(PlayData value, $Res Function(PlayData) then) =
      _$PlayDataCopyWithImpl<$Res, PlayData>;
  @useResult
  $Res call(
      {List<String> questions,
      String answers,
      String answersKanji,
      List<String> usedWords});
}

/// @nodoc
class _$PlayDataCopyWithImpl<$Res, $Val extends PlayData>
    implements $PlayDataCopyWith<$Res> {
  _$PlayDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_PlayDataCopyWith<$Res> implements $PlayDataCopyWith<$Res> {
  factory _$$_PlayDataCopyWith(
          _$_PlayData value, $Res Function(_$_PlayData) then) =
      __$$_PlayDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> questions,
      String answers,
      String answersKanji,
      List<String> usedWords});
}

/// @nodoc
class __$$_PlayDataCopyWithImpl<$Res>
    extends _$PlayDataCopyWithImpl<$Res, _$_PlayData>
    implements _$$_PlayDataCopyWith<$Res> {
  __$$_PlayDataCopyWithImpl(
      _$_PlayData _value, $Res Function(_$_PlayData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? answers = null,
    Object? answersKanji = null,
    Object? usedWords = null,
  }) {
    return _then(_$_PlayData(
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

class _$_PlayData implements _PlayData {
  const _$_PlayData(
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
    return 'PlayData(questions: $questions, answers: $answers, answersKanji: $answersKanji, usedWords: $usedWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayData &&
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
  _$$_PlayDataCopyWith<_$_PlayData> get copyWith =>
      __$$_PlayDataCopyWithImpl<_$_PlayData>(this, _$identity);
}

abstract class _PlayData implements PlayData {
  const factory _PlayData(
      {final List<String> questions,
      required final String answers,
      required final String answersKanji,
      final List<String> usedWords}) = _$_PlayData;

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
  _$$_PlayDataCopyWith<_$_PlayData> get copyWith =>
      throw _privateConstructorUsedError;
}
