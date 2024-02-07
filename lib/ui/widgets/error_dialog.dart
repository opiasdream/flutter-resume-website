import 'package:resume/constants/dimens.dart';
import 'package:resume/constants/strings.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key, this.errMsg});

  final String? errMsg;

  static Future<void> show(
      {String? message, required BuildContext context}) async {
    await showDialog(
        context: context, builder: (context) => ErrorDialog(errMsg: message));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(error), CloseButton()]),
      content: SizedBox(
          width: dialogWidth,
          child: Text(errMsg ?? defaultErrorMsg, textAlign: TextAlign.start)),
      actions: [
        FilledButton(
            onPressed: () => Navigator.pop(context), child: const Text(ok))
      ],
    );
  }
}
