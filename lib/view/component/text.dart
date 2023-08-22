// Flutter imports:
import 'package:flutter/material.dart';

class MyText {
  static Widget p10bold({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.w600),
    );
  }

  static Widget p12normal({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w300),
    );
  }

  static Widget p12bold({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w600),
    );
  }

  static Widget p14normal({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w300),
    );
  }

  static Widget p14bold({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w600),
    );
  }

  static Widget p16normal({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w300),
    );
  }

  static Widget p16bold({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w600),
    );
  }

  static Widget p18normal({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w300),
    );
  }

  static Widget p18bold({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w600),
    );
  }

  static Widget p20normal({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w300),
    );
  }

  static Widget p20bold({required String text, Color? color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w600),
    );
  }
}
