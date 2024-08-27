import 'package:blueberry_flutter_template/utils/DialogHelpers.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const name = 'MyPageScreen';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // _settings 리스트 초기화
    final List<Map<String, dynamic>> settingData = [
      {
        'title': '주변 경찰서 위치 확인하기',
        'icon': Icons.location_on,
        'onTap': () {
          // 프로필 수정 화면으로 이동하는 코드
          showErrorDialog(context, '아직 준비중인 기능입니다.');
        },
      },
      {
        'title': '경찰 순찰 빈도 및 일정',
        'icon': Icons.person,
        'onTap': () {
          // 알림 설정 화면으로 이동하는 코드
          showErrorDialog(context, '아직 준비중인 기능입니다.');
        },
      },
      {
        'title': '여성 안심 귀가 서비스',
        'icon': Icons.safety_check,
        'onTap': () {
          // 계정 관리 화면으로 이동하는 코드
          showErrorDialog(context, '아직 준비중인 기능입니다.');
        },
      },
      // 더 많은 설정 항목 추가 가능
    ];

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: settingData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: SettingListTile(context, settingData[index]['title'],
                    settingData[index]['onTap'], settingData[index]['icon']),
              );
            }),
      ),
    ));
  }
}

Widget SettingListTile(
    BuildContext, String title, Function onTap, IconData icon) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black, size: 40.0),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(title, style: const TextStyle(fontSize: 20.0)),
        ),
        onTap: () => onTap(),
      ),
    ),
  );
}
