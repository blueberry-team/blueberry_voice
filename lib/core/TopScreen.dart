import 'package:blueberry_flutter_template/feature/send/SendMessageScreen.dart';
import 'package:blueberry_flutter_template/feature/setting/SettingScreen.dart';
import 'package:blueberry_flutter_template/feature/voiceOutput/VoiceOutputScreen.dart';
import 'package:blueberry_flutter_template/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// TopScreen.dart
///
/// Top Page
/// - BottomNavigationBar를 통해 각 페이지로 이동
///
/// @jwson-automation

final selectedIndexProvider = StateProvider<int>((ref) => 0);

class TopScreen extends ConsumerWidget {
  static const String name = '/TopScreen';

  const TopScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    final List<Widget> pages = [
      const VoiceOutputScreen(),
      const SendMessageScreen(),
      const SettingScreen(),
    ];

    return Scaffold(
      body: Center(
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: selectedIndex,
        onPageChanged: (index) {
          ref.read(selectedIndexProvider.notifier).state = index;
        },
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onPageChanged;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
        margin: const EdgeInsets.only(bottom: 60.0),
        decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(28.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(3, (index) {
            return Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: () => onPageChanged(index),
                  customBorder: const CircleBorder(),
                  child: SizedBox(
                    width: 100,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                index == currentIndex ? Colors.white : accentColor2,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        if (index == currentIndex)
                          Container(
                            width: 20,
                            height: 6,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                      ],
                    ),
                  )),
            );
          }),
        ),
      ),
    );
  }
}
