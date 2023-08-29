// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayData _$$_PlayDataFromJson(Map<String, dynamic> json) => _$_PlayData(
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      answers: json['answers'] as String,
      answersKanji: json['answersKanji'] as String,
      usedWords: (json['usedWords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PlayDataToJson(_$_PlayData instance) =>
    <String, dynamic>{
      'questions': instance.questions,
      'answers': instance.answers,
      'answersKanji': instance.answersKanji,
      'usedWords': instance.usedWords,
    };
