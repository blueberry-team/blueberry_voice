import 'package:blueberry_flutter_template/core/TopScreen.dart';
import 'package:blueberry_flutter_template/feature/onboarding/widgets/OnboardingPageViewBuilder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'OnboardingData.dart';
import 'widgets/OnboardingDotWidget.dart';
import 'widgets/OnboardingPageButton.dart';

class OnboardingScreen extends StatefulWidget {
  static const String name = 'OnboardingScreen';

  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _onNextPressed() async {
    if (_currentPage == OnboardingData.pageDataList.length - 1) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('hasSeenOnboarding', true);
      context.goNamed(TopScreen.name);
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: OnboardingPageViewBuilder(
              pageController: _pageController,
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                OnboardingDotWidget(currentPage: _currentPage),
                const SizedBox(height: 20),
                OnboardingPageButton(
                  currentPage: _currentPage,
                  onNextPressed: _onNextPressed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
