// import 'package:flutter/gestures.dart';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:mojikko/data/color.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({
    super.key,
    required this.child,
    this.padding,
    this.foregroundColor,
    this.backgroundColor,
    this.side,
    this.onPressed,
  });

  final Widget child;
  final EdgeInsets? padding;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final BorderSide? side;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    const radius = 32.0;

    return OutlinedButton(
    style: OutlinedButton.styleFrom(
    padding: padding ?? const EdgeInsets.symmetric(vertical: 17),
    foregroundColor: foregroundColor ?? MyColors.white,
    backgroundColor: backgroundColor ?? MyColors.primary,
    side: side ?? BorderSide.none,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
    disabledBackgroundColor: MyColors.textFieldBorder,
    disabledForegroundColor: MyColors.white,
    ),
    onPressed: onPressed,
    child: child,
    );
  }
}

class CustomOutLineButton extends StatelessWidget {
  const CustomOutLineButton({
    super.key,
    required this.child,
    this.padding,
    this.foregroundColor,
    this.backgroundColor,
    this.side,
    this.onPressed,
  });
  final Widget child;
  final EdgeInsets? padding;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final BorderSide? side;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ColorButton(
      padding: padding,
      foregroundColor: foregroundColor ?? MyColors.primary,
      backgroundColor: backgroundColor ?? MyColors.white,
      side: side ?? BorderSide(color: foregroundColor ?? MyColors.primary),
      onPressed: onPressed,
      child: child,
    );
  }
}
