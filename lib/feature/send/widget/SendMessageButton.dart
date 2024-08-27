import 'package:blueberry_flutter_template/feature/send/provider/messageIndexProvider.dart';
import 'package:blueberry_flutter_template/utils/AppColors.dart';
import 'package:blueberry_flutter_template/utils/AppStrings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class SendMessageButton extends ConsumerWidget {
  const SendMessageButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(messageIndexProvider);
    return CircleAvatar(
      backgroundColor: accentColor,
      radius: 50,
      child: IconButton(
        onPressed: () async {
          final Uri smsUri = Uri(
            scheme: 'sms',
            path: '112',
            queryParameters: <String, String>{
              'body': messages[index],
            },
          );

          if (await canLaunchUrl(smsUri)) {
            await launchUrl(smsUri);
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  content: Text(AppStrings.errorMessage_sendFailed),
                );
              },
            );
          }
        },
        icon: const Icon(Icons.send),
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
