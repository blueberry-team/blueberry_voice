import 'package:blueberry_flutter_template/feature/voiceOutput/provider/CategoryIondexProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VoiceOutputButton extends ConsumerWidget {
  const VoiceOutputButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryIndex = ref.watch(categoryIndexProvider);

    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 50,
      child: IconButton(
        onPressed: () {
          print('음성 출력: ${categoryIndex}');
        },
        icon: const Icon(Icons.volume_up),
        // 마이크 아이콘
        iconSize: 50,
        // 아이콘 크기
        color: Colors.white,
        // 아이콘 색상
        splashRadius: 30, // 클릭 반경
      ),
    );
  }
}
