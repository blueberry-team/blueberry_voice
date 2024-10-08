import 'package:audioplayers/audioplayers.dart';
import 'package:blueberry_flutter_template/feature/voiceOutput/provider/CategoryIondexProvider.dart';
import 'package:blueberry_flutter_template/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final player = AudioPlayer();

class VoiceOutputButton extends ConsumerWidget {
  const VoiceOutputButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryIndex = ref.watch(categoryIndexProvider);
    return CircleAvatar(
      backgroundColor: accentColor,
      radius: 50,
      child: IconButton(
        onPressed: () {
          player.play(AssetSource('voice/voice_${categoryIndex + 1}.wav'));
        },
        icon: const Icon(Icons.volume_up),
        color: Colors.white,
        // 마이크 아이콘
        iconSize: 50,
        // 아이콘 크기
        splashRadius: 30, // 클릭 반경
      ),
    );
  }
}
