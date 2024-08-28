import 'package:blueberry_flutter_template/feature/voiceOutput/provider/CategoryIondexProvider.dart';
import 'package:blueberry_flutter_template/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VoiceOutputDescriptionTextBox extends ConsumerWidget {
  const VoiceOutputDescriptionTextBox({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryIndex = ref.watch(categoryIndexProvider);

    final descriptionList = ['잘 갔다 왔어? 오늘 좀 늦었네?', '왔어? 우리 이야기 좀 하자', '아~ 진짜 드디어 왔네..'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: accentColor,
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
                    color: textColor,
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          )),
    );
  }
}
