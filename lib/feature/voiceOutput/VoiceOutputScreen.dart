import 'package:blueberry_flutter_template/feature/voiceOutput/widget/VoiceOutputButton.dart';
import 'package:blueberry_flutter_template/feature/voiceOutput/widget/VoiceOutputCategoryListView.dart';
import 'package:blueberry_flutter_template/feature/voiceOutput/widget/VoiceOutputDescriptionTextBox.dart';
import 'package:blueberry_flutter_template/utils/AppTextStyle.dart';
import 'package:flutter/material.dart';

class VoiceOutputScreen extends StatelessWidget {
  static const name = 'VoiceOutputScreen';

  const VoiceOutputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: VoiceOutputTitleText()),
            Expanded(flex: 4, child: VoiceOutputCategoryListView()),
            Expanded(flex: 1, child: VoiceOutputDescriptionTextBox()),
            Expanded(flex: 5, child: VoiceOutputButton()),
          ],
        ),
      ),
    );
  }
}

class VoiceOutputTitleText extends StatelessWidget {
  const VoiceOutputTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '남자 음성 출력 하기',
      style: black24TextStyle,
    );
  }
}
