// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:mojikko/data/color.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.keyboardType = TextInputType.text,
    this.hintText = '',
    this.enabled = true,
    this.contentPadding = const EdgeInsets.symmetric(
      vertical: 18,
      horizontal: 16,
    ),
    this.obscureText = false,
    this.controller,
    this.suffixIcon,
    this.errorText,
    this.showErrorText = true,
    this.inputFormatters,
    this.onChanged,
  });

  final TextInputType keyboardType;
  final String hintText;
  final bool enabled;
  final EdgeInsets contentPadding;
  final bool obscureText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? errorText;

  /// 住所検索フォームのみ使用しないため
  final bool showErrorText;

  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          enabled: enabled,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            isDense: true,
            suffixIcon: suffixIcon,
            contentPadding: contentPadding,
            filled: !enabled,
            fillColor: MyColors.pageBreak,
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: MyColors.hintText,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: errorText != null
                  ? const BorderSide(color: MyColors.error)
                  : const BorderSide(color: MyColors.textFieldBorder),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: errorText != null
                  ? const BorderSide(color: MyColors.error)
                  : const BorderSide(color: MyColors.textFieldBorder),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: errorText != null
                  ? const BorderSide(color: MyColors.error)
                  : const BorderSide(color: MyColors.textFieldBorder),
            ),
          ),
          onChanged: onChanged,
        ),
        if (errorText != null && showErrorText) ...{
          const SizedBox(height: 5,),
          Text(
            errorText!,
            style: const TextStyle(
              fontSize: 14,
              color: MyColors.error,
              fontWeight: FontWeight.w600,
            ),
          ),
        },
      ],
    );
  }
}
