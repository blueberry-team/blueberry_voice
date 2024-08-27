import 'package:blueberry_flutter_template/core/TopScreen.dart';
import 'package:blueberry_flutter_template/feature/onboarding/OnboardingScreen.dart';
import 'package:blueberry_flutter_template/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // 현재 로딩 단계와 총 단계를 관리하는 변수들
  int _currentStep = 0;
  final int _totalSteps = 3;

  @override
  void initState() {
    super.initState();
    // 웹이 아닌 경우에만 초기화 함수 호출
    _initializeApp();
  }

  /// 앱 초기화를 단계별로 수행하는 함수
  Future<void> _initializeApp() async {
    final prefs = await SharedPreferences.getInstance();
    final hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false;

    try {
      // 스플레쉬 스크린 확인을 위한 3초 지연
      await Future.delayed(const Duration(seconds: 3));
      // 초기화 완료 후 메인 화면으로 전환
      if (mounted) {
        hasSeenOnboarding
                ? context.goNamed(TopScreen.name) // 온보딩 화면을 본 경우
                : context.goNamed(OnboardingScreen.name) // 온보딩 화면을 보지 않은 경우
            ;
      }
    } catch (e) {
      // 초기화 중 발생한 오류 처리
      print('초기화 오류: $e');
      // 필요 시 오류 화면으로 이동하거나 재시도 로직 추가 가능
    }
  }

  /// 각 단계별로 로딩 상태를 업데이트하고 작업을 수행하는 함수
  Future<void> _loadStep(String stepName, int stepNumber,
      Future<void> Function() stepFunction) async {
    setState(() {
      _currentStep = stepNumber;
    });
    await stepFunction();
  }

  @override
  Widget build(BuildContext context) {
    // 모바일인 경우 스플래쉬 스크린 표시
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 앱 로고
            Lottie.asset(
              Assets.lottie.splash,
            ),
          ],
        ),
      ),
    );
  }
}
