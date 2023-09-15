import 'package:flutter/material.dart';
import 'package:mojikko/data/color.dart';

enum WordStatus {
  empty(
      textColor: MyColors.black,
      backgroundColor: MyColors.white),
  none(
      textColor: MyColors.white,
      backgroundColor: MyColors.none),
  existWord(
      textColor: MyColors.white,
      backgroundColor: MyColors.existWord),
  exactPosition(
      textColor: MyColors.white,
      backgroundColor: MyColors.exactPosition);

  const WordStatus(
      {required this.textColor,
      required this.backgroundColor});

  final Color backgroundColor;
  final Color textColor;
}
