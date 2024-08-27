import 'package:blueberry_flutter_template/feature/send/provider/messageIndexProvider.dart';
import 'package:blueberry_flutter_template/utils/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SendMessagePreviewChangeButton extends ConsumerWidget {
  const SendMessagePreviewChangeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(messageIndexProvider.notifier);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.refresh, size: 30.0),
          onPressed: () {
            notifier.changeIndex();
            // 텍스트 변경
          },
        ),
        Text('메시지 텍스트 변경하기', style: black16TextStyle),
      ],
    );
  }
}
