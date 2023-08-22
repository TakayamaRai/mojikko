import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/data/color.dart';
import 'package:mojikko/view/component/button.dart';
import 'package:mojikko/view/component/scroll_view.dart';
import 'package:mojikko/view/component/text.dart';

class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyScrollView(
      child: Column(
        children: [
          MyText.p12bold(text: "子供向け"),
          ColorButton(
              child: MyText.p12normal(text: "10/50"),
              backgroundColor: MyColors.primary,
              onPressed: ()=>{}),
          const SizedBox(height: 30,),
          MyText.p12bold(text: "一般向け"),
          ColorButton(
              child: MyText.p12normal(text: "10/50"),
              onPressed: ()=>{}
          ),
        ],
      ),
    );
  }
}
