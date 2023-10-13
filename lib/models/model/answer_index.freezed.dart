// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerIndex {
  int get childIndex => throw _privateConstructorUsedError;
  int get generalIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerIndexCopyWith<AnswerIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerIndexCopyWith<$Res> {
  factory $AnswerIndexCopyWith(
          AnswerIndex value, $Res Function(AnswerIndex) then) =
      _$AnswerIndexCopyWithImpl<$Res, AnswerIndex>;
  @useResult
  $Res call({int childIndex, int generalIndex});
}

/// @nodoc
class _$AnswerIndexCopyWithImpl<$Res, $Val extends AnswerIndex>
    implements $AnswerIndexCopyWith<$Res> {
  _$AnswerIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childIndex = null,
    Object? generalIndex = null,
  }) {
    return _then(_value.copyWith(
      childIndex: null == childIndex
          ? _value.childIndex
          : childIndex // ignore: cast_nullable_to_non_nullable
              as int,
      generalIndex: null == generalIndex
          ? _value.generalIndex
          : generalIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerIndexCopyWith<$Res>
    implements $AnswerIndexCopyWith<$Res> {
  factory _$$_AnswerIndexCopyWith(
          _$_AnswerIndex value, $Res Function(_$_AnswerIndex) then) =
      __$$_AnswerIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int childIndex, int generalIndex});
}

/// @nodoc
class __$$_AnswerIndexCopyWithImpl<$Res>
    extends _$AnswerIndexCopyWithImpl<$Res, _$_AnswerIndex>
    implements _$$_AnswerIndexCopyWith<$Res> {
  __$$_AnswerIndexCopyWithImpl(
      _$_AnswerIndex _value, $Res Function(_$_AnswerIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childIndex = null,
    Object? generalIndex = null,
  }) {
    return _then(_$_AnswerIndex(
      childIndex: null == childIndex
          ? _value.childIndex
          : childIndex // ignore: cast_nullable_to_non_nullable
              as int,
      generalIndex: null == generalIndex
          ? _value.generalIndex
          : generalIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AnswerIndex implements _AnswerIndex {
  const _$_AnswerIndex({this.childIndex = 0, this.generalIndex = 0});

  @override
  @JsonKey()
  final int childIndex;
  @override
  @JsonKey()
  final int generalIndex;

  @override
  String toString() {
    return 'AnswerIndex(childIndex: $childIndex, generalIndex: $generalIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerIndex &&
            (identical(other.childIndex, childIndex) ||
                other.childIndex == childIndex) &&
            (identical(other.generalIndex, generalIndex) ||
                other.generalIndex == generalIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, childIndex, generalIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerIndexCopyWith<_$_AnswerIndex> get copyWith =>
      __$$_AnswerIndexCopyWithImpl<_$_AnswerIndex>(this, _$identity);
}

abstract class _AnswerIndex implements AnswerIndex {
  const factory _AnswerIndex({final int childIndex, final int generalIndex}) =
      _$_AnswerIndex;

  @override
  int get childIndex;
  @override
  int get generalIndex;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerIndexCopyWith<_$_AnswerIndex> get copyWith =>
      throw _privateConstructorUsedError;
}
