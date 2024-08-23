import 'package:blueberry_flutter_template/core/CustomDialogs.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  static const name = 'MyPageScreen';

  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // 발송 문자 지정 버튼의 기능 구현
                CustomDialogs.showCustomDialog(
                  context,
                  title: '발송 문자 지정',
                  content: '구현 예정입니다.',
                  onConfirm: () {
                    // 발송 문자 선택 로직 구현
                  },
                );
              },
              child: const Text('발송 문자 지정'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // 주변 범죄 위험도 확인 버튼의 기능 구현
                CustomDialogs.showCustomDialog(
                  context,
                  title: '발송 문자 지정',
                  content: '구현 예정입니다.',
                  onConfirm: () {
                    // 발송 문자 선택 로직 구현
                  },
                );
              },
              child: const Text('주변 범죄 위험도 확인'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // 자동 대화 시간 설정 버튼의 기능 구현
                CustomDialogs.showCustomDialog(
                  context,
                  title: '발송 문자 지정',
                  content: '구현 예정입니다.',
                  onConfirm: () {
                    // 발송 문자 선택 로직 구현
                  },
                );
              },
              child: const Text('자동 대화 시간 설정'),
            ),
          ],
        ),
      ),
    );
  }
}
