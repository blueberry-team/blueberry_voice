import 'package:blueberry_flutter_template/feature/send/widget/SendMessageButton.dart';
import 'package:blueberry_flutter_template/feature/send/widget/SendMessagePreview.dart';
import 'package:blueberry_flutter_template/feature/send/widget/SendMessagePreviewChangeButton.dart';
import 'package:blueberry_flutter_template/utils/AppTextStyle.dart';
import 'package:flutter/material.dart';

class SendMessageScreen extends StatelessWidget {
  const SendMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: SendMessageTitleText()),
            Expanded(flex: 4, child: SendMessagePreview()),
            Expanded(flex: 1, child: SendMessagePreviewChangeButton()),
            Expanded(
              flex: 5,
              child: SendMessageButton(),
            )
          ],
        ),
      ),
    );
  }
}

class SendMessageTitleText extends StatelessWidget {
  const SendMessageTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '경찰서에 문자하기',
      style: black28boldTextStyle,
    );
  }
}

