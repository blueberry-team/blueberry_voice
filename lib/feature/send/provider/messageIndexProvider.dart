import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageIndexNotifier extends StateNotifier<int> {
  MessageIndexNotifier() : super(0);

  void changeIndex() {
    state = (state + 1) % messages.length;
  }
}

final messageIndexProvider =
    StateNotifierProvider<MessageIndexNotifier, int>((ref) {
  return MessageIndexNotifier();
});

final messages = [
  '이상한 사람이\n따라오고 있어요.\n도와주세요.',
  '수상한 사람이 있어요 \n도와주세요.',
  '취해서 난동을 부리는 사람이 있어요 \n도와주세요.'
];
