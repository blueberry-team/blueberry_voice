import 'package:flutter/material.dart';

import '../../../utils/AppStrings.dart';
import '../OnboardingData.dart';

class OnboardingPageButton extends StatelessWidget {
  final int currentPage;
  final VoidCallback onNextPressed;

  const OnboardingPageButton({
    Key? key,
    required this.currentPage,
    required this.onNextPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onNextPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      ),
      child: Text(
        currentPage == OnboardingData.pageDataList.length - 1
            ? AppStrings.onboardingScreenButtonStart
            : AppStrings.onboardingScreenButtonNext,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
