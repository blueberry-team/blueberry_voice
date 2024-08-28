import 'package:blueberry_flutter_template/utils/AppColors.dart';
import 'package:flutter/material.dart';

import 'AppStrings.dart';

void showSuccessDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: primaryColor,
        title: const Text(AppStrings.showSuccessDialogTitle),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text(AppStrings.okButtonText),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void showErrorDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: primaryColor,
        title: const Text(AppStrings.showErrorDialogTitle),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text(AppStrings.okButtonText),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
