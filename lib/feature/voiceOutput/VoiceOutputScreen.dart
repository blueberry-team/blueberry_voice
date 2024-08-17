import 'package:flutter/material.dart';

import './widget/VoiceOutputWidget.dart';

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
            Expanded(child: VoiceOutputWidget()),
          ],
        ),
      ),
    );
  }
}
