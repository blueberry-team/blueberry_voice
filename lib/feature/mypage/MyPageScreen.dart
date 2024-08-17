import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  static const name = 'MyPageScreen';

  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('마이페이지'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "nickname",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // 발송 문자 지정 버튼의 기능 구현
              },
              child: const Text('발송 문자 지정'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // 주변 범죄 위험도 확인 버튼의 기능 구현
              },
              child: const Text('주변 범죄 위험도 확인'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // 자동 대화 시간 설정 버튼의 기능 구현
              },
              child: const Text('자동 대화 시간 설정'),
            ),
          ],
        ),
      ),
    );
  }
}
