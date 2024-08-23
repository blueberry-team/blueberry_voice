// custom_dialogs.dart
import 'package:flutter/material.dart';

class CustomDialogs {
  // 일반 다이얼로그 생성
  static void showCustomDialog(
      BuildContext context, {
        required String title,
        required String content,
        String? confirmText = '확인',
        String? cancelText = '취소',
        VoidCallback? onConfirm,
        VoidCallback? onCancel,
        bool isTextField = false,
      }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: isTextField
              ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(content),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: '시간(분)',
                ),
              ),
            ],
          )
              : Text(content),
          actions: [
            if (onCancel != null)
              TextButton(
                onPressed: () {
                  onCancel();
                  Navigator.of(context).pop();
                },
                child: Text(cancelText!),
              ),
            if (onConfirm != null)
              ElevatedButton(
                onPressed: () {
                  onConfirm();
                  Navigator.of(context).pop();
                },
                child: Text(confirmText!),
              ),
          ],
        );
      },
    );
  }
}
