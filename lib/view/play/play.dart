// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mojikko/models/model/play_data.dart';
import 'package:mojikko/viewmodel/play_viewmodel.dart';

class PlayPage extends ConsumerWidget {
  const PlayPage({super.key, required this.playData});
  final PlayData playData;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(playViewModelProvider.notifier);
    final errorTextOfCompanyNumber =
    ref.watch(playViewModelProvider.select((s) => s.errorTextOfInputAnswer));

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [

            ],
          ),
        ),
      )
    );
  }
}
