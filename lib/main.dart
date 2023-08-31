import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/data/color.dart';
import 'package:mojikko/view/home.dart';

import 'models/local/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  await Future.wait([
    SharedPreferencesUtil.instance()
  ]);
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'もじっこ',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('jp'),
      ],
      theme: ThemeData(
          backgroundColor: MyColors.background,
          primaryColor: MyColors.cardBackground,
          fontFamily: 'Hiragino Kaku Gothic ProN'),
      home: const Home(),
    );
  }
}
