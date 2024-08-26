import 'package:blueberry_flutter_template/feature/voiceOutput/provider/CategoryIondexProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VoiceOutputDescriptionTextBox extends ConsumerWidget {
  const VoiceOutputDescriptionTextBox({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryIndex = ref.watch(categoryIndexProvider);

    final descriptionList = [
      '너는 항상 왜 그러는 거야?',
      '늦었네..?',
      '오늘도 수고 많았어~',
      '뭐? 어떤 놈인데?',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black)),
                Text(
                  descriptionList[categoryIndex],
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          )),
    );
  }
}
