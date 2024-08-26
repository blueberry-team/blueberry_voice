import 'package:blueberry_flutter_template/feature/send/provider/messageIndexProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SendMessagePreview extends ConsumerWidget {
  const SendMessagePreview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(messageIndexProvider);
    final notifier = ref.watch(messageIndexProvider.notifier);
    // 카테고리 데이터를 리스트로 정의
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              messages[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 60),

          ],
        ),
      ),
    );
  }
}
