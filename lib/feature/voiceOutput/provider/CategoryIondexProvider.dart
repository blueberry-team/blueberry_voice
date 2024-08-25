import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryIndexNotifier extends StateNotifier<int> {
  CategoryIndexNotifier() : super(0);

  void setIndex(int index) {
    state = index;
  }
}

final categoryIndexProvider =
    StateNotifierProvider<CategoryIndexNotifier, int>((ref) {
  return CategoryIndexNotifier();
});
