import 'package:flutter/material.dart';

import '../OnboardingData.dart';
import 'OnboardingPageItem.dart';

class OnboardingPageViewBuilder extends StatelessWidget {
  final PageController pageController;
  final Function(int) onPageChanged;

  const OnboardingPageViewBuilder({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      onPageChanged: onPageChanged,
      itemCount: OnboardingData.pageDataList.length,
      itemBuilder: (context, index) => OnboardingPageItem(
        title: OnboardingData.pageDataList[index][OnboardingData.title]!,
        description: OnboardingData.pageDataList[index]
            [OnboardingData.description]!,
        image: OnboardingData.pageDataList[index][OnboardingData.image]!,
      ),
    );
  }
}
