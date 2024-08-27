import 'package:blueberry_flutter_template/feature/map/PoliceMapScreen.dart';
import 'package:blueberry_flutter_template/feature/mypage/MyPageScreen.dart';
import 'package:blueberry_flutter_template/feature/send/SendMessageScreen.dart';
import 'package:blueberry_flutter_template/feature/voiceOutput/VoiceOutputScreen.dart';
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
      const MyPageScreen(),
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
    return Container(
      margin: EdgeInsets.only(bottom: 60.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(3, (index) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => onPageChanged(index),
              customBorder: const CircleBorder(),
              child: Container(
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == currentIndex ? Colors.blue : Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 3,),
                    if (index == currentIndex)
                      Container(
                        width: 20,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                  ],
                ),
              )
          ),
          );
        }),
      ),
    );
  }
}
