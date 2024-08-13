import 'package:flutter/material.dart';

import '../../../utils/AppStrings.dart';
import '../OnboardingData.dart';

class OnboardingPageButton extends StatelessWidget {
  final int currentPage;
  final VoidCallback onNextPressed;

  const OnboardingPageButton({
    super.key,
    required this.currentPage,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onNextPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      ),
      child: Text(
        currentPage == OnboardingData.pageDataList.length - 1
            ? AppStrings.onboardingScreenButtonStart
            : AppStrings.onboardingScreenButtonNext,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
