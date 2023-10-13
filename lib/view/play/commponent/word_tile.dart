import 'package:flutter/material.dart';
import 'package:mojikko/data/enum.dart';
import 'package:mojikko/view/component/text.dart';

class WordTile extends StatelessWidget {
  const WordTile({
    super.key,
    required this.width,
    required this.wordsStatus,
    required this.word,
});
  final double width;
  final Map<String,WordStatus> wordsStatus;
  final String word;

  @override
  Widget build(BuildContext context) {
    if(word ==' ') {
      return Container(
        height: width,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
      );
    }
    return Container(
      height: width,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(2, 2),
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 5.0,
          ),
          BoxShadow(
            color: wordsStatus[word]!.backgroundColor,
            spreadRadius: -0.01,
          ),
        ],
      ),
      child: Center(child: MyText.p12normal(text: word,color: wordsStatus[word]!.textColor)),
    );
  }
}
