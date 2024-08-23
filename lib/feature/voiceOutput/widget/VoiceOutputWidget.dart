import 'package:audioplayers/audioplayers.dart';
import 'package:blueberry_flutter_template/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/VoiceOutputProvider.dart';

class VoiceOutputWidget extends ConsumerWidget {
  const VoiceOutputWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(voiceOutputProvider);
    return list.when(
      data: (data) {
        return _buildListView(data);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) {
        return Center(child: Text('Error: $error'));
      },
    );
  }

  Widget _buildListView(List<String> data) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: data
            .map((text) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: VoiceOutputRow(text: text, index: data.indexOf(text)),
                ))
            .toList(),
      ),
    );
  }
}

class VoiceOutputRow extends StatelessWidget {
  final String text;
  final int index;
  final player = AudioPlayer();

  VoiceOutputRow({super.key, required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              final source = AssetSource("voice/voice_${index+1}.mp3");
              player.play(source);
            },
            child: const Text("button"),
          ),
        ],
      ),
    );
  }
}
