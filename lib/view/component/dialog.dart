// Flutter imports:
import 'package:flutter/material.dart';
import 'package:mojikko/data/color.dart';
import 'package:mojikko/view/component/button.dart';
import 'package:mojikko/view/component/text.dart';


Future<T?> showMyDialog<T>({
  required BuildContext context,
  bool barrierDismissible = true,
  required String title,
  String? content,
  Widget? contentWidget,
  String okButtonText = 'OK',
  String? noButtonText,
  VoidCallback? onPressedOKButton,
  VoidCallback? onPressedNOButton,
}) async {
  assert(content != null && contentWidget == null || content == null && contentWidget != null);

  return showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (context) {
      final mediaWidth = MediaQuery.of(context).size.width;
      return Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: mediaWidth <= 300 ? mediaWidth : 300,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText.p16bold(text: title),
              if (content != null) ...{
                const SizedBox(height: 25,),
                MyText.p14normal(text: content),
              },
              if (contentWidget != null) ...{
                const SizedBox(height: 25,),
                contentWidget,
              },
              const SizedBox(height: 25,),
              SizedBox(
                width: double.infinity,
                child: ColorButton(
                  onPressed: onPressedOKButton ?? () => Navigator.pop(context, true),
                  child: MyText.p16bold(text: okButtonText),
                ),
              ),
              if (noButtonText != null)
                TextButton(
                  onPressed: onPressedNOButton ?? () => Navigator.pop(context, false),
                  child: MyText.p14bold(
                    text: noButtonText,
                    color: const Color(0xFF616161),
                  ),
                ),
            ],
          ),
        ),
      );
    },
  );
}
