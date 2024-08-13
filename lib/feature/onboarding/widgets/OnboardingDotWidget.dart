import 'package:flutter/material.dart';

import '../OnboardingData.dart';

class OnboardingDotWidget extends StatelessWidget {
  final int currentPage;

  const OnboardingDotWidget({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        OnboardingData.pageDataList.length,
        (index) => buildDot(index, currentPage),
      ),
    );
  }
}

Widget buildDot(int index, int currentPage) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 200),
    margin: const EdgeInsets.only(right: 8),
    height: 10,
    width: currentPage == index ? 20 : 10,
    decoration: BoxDecoration(
      color: currentPage == index ? Colors.blueAccent : Colors.grey,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}
