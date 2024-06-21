import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

Future<void> showNoConnectionToast(
  String message,
  BuildContext context,
) async {
  await showFlash(
    context: context,
    duration: const Duration(seconds: 4),
    builder: (context, controller) {
      return FlashBar/*<Widget>.dialog*/(
        controller: controller,
        backgroundColor: Colors.black.withOpacity(0.7),
        // borderRadius: BorderRadius.circular(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(8),
        content: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            textAlign: TextAlign.justify,
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      );
    },
  );
}

Future<void> showAuthErrorToast(
  String message,
  BuildContext context,
) async {
  await showFlash(
    context: context,
    duration: const Duration(seconds: 4),
    builder: (context, controller) {
      return FlashBar/*<Widget>.dialog*/(
        dismissDirections: const [
          FlashDismissDirection.endToStart,
          FlashDismissDirection.startToEnd,
        ],
        controller: controller,
        backgroundColor: Colors.red,
        // borderRadius: BorderRadius.circular(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(4),
        content: Padding(
          padding: const EdgeInsets.all(4),
          child: Text(
            textAlign: TextAlign.justify,
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      );
    },
  );
}
