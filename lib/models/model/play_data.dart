// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mojikko/data/enum.dart';

part 'play_data.freezed.dart';

@freezed
class PlayData with _$PlayData {
  const factory PlayData({
    @Default(['','','','','','','','','','']) List<String> questions,
    @Default(0) int questionIndex,
    @Default('') String errorTextOfInputAnswer,
    @Default({
      'あ':WordStatus.empty,'い':WordStatus.empty,'う':WordStatus.empty,'え':WordStatus.empty,'お':WordStatus.empty,
      'か':WordStatus.empty,'き':WordStatus.empty,'く':WordStatus.empty,'け':WordStatus.empty,'こ':WordStatus.empty,
      'さ':WordStatus.empty,'し':WordStatus.empty,'す':WordStatus.empty,'せ':WordStatus.empty,'そ':WordStatus.empty,
      'た':WordStatus.empty,'ち':WordStatus.empty,'つ':WordStatus.empty,'て':WordStatus.empty,'と':WordStatus.empty,
      'な':WordStatus.empty,'に':WordStatus.empty,'ぬ':WordStatus.empty,'ね':WordStatus.empty,'の':WordStatus.empty,
      'は':WordStatus.empty,'ひ':WordStatus.empty,'ふ':WordStatus.empty,'へ':WordStatus.empty,'ほ':WordStatus.empty,
      'ま':WordStatus.empty,'み':WordStatus.empty,'む':WordStatus.empty,'め':WordStatus.empty,'も':WordStatus.empty,
      'や':WordStatus.empty,'ゆ':WordStatus.empty,'よ':WordStatus.empty,
      'ら':WordStatus.empty,'り':WordStatus.empty,'る':WordStatus.empty,'れ':WordStatus.empty,'ろ':WordStatus.empty,
      'わ':WordStatus.empty,'を':WordStatus.empty,'ん':WordStatus.empty,
      'ぁ':WordStatus.empty,'ぃ':WordStatus.empty,'ぅ':WordStatus.empty,'ぇ':WordStatus.empty,'ぉ':WordStatus.empty,
      'が':WordStatus.empty,'ぎ':WordStatus.empty,'ぐ':WordStatus.empty,'げ':WordStatus.empty,'ご':WordStatus.empty,
      'ざ':WordStatus.empty,'じ':WordStatus.empty,'ず':WordStatus.empty,'ぜ':WordStatus.empty,'ぞ':WordStatus.empty,
      'だ':WordStatus.empty,'ぢ':WordStatus.empty,'づ':WordStatus.empty,'で':WordStatus.empty,'ど':WordStatus.empty,
      'ば':WordStatus.empty,'び':WordStatus.empty,'ぶ':WordStatus.empty,'べ':WordStatus.empty,'ぼ':WordStatus.empty,
      'ぱ':WordStatus.empty,'ぴ':WordStatus.empty,'ぷ':WordStatus.empty,'ぺ':WordStatus.empty,'ぽ':WordStatus.empty,
      'ゃ':WordStatus.empty,'ゅ':WordStatus.empty,'ょ':WordStatus.empty,'っ':WordStatus.empty,'ー':WordStatus.empty,
    }) Map<String,WordStatus> wordsStatus,
  }) = _PlayData;

}
