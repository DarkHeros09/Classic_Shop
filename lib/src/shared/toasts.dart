import 'package:classic_shop/src/helpers/locale_extension.dart';
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
        backgroundColor: Colors.black.withAlpha(230),
        // borderRadius: BorderRadius.circular(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(8),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            // textAlign: TextAlign.justify,
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
  String error,
  BuildContext context,
) async {
  await showFlash(
    context: context,
    duration: const Duration(seconds: 4),
    builder: (context, controller) {
      final message = error == '401'
          ? context.loc.invalid_credentials
          : error == '403'
              ? context.loc.account_blocked
              : error == '404'
                  ? context.loc.user_not_found
                  : error == '409'
                      ? context.loc.email_already_in_use
                      : 'حدث خطأ ما.';
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
        margin: const EdgeInsets.all(8),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            // textAlign: TextAlign.justify,
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      );
    },
  );
}

Future<void> showQuickToast(
  String message,
  BuildContext context, {
  FlashPosition position = FlashPosition.bottom,
}) async {
  await showFlash(
    context: context,
    duration: const Duration(seconds: 2),
    builder: (context, controller) {
      return FlashBar/*<Widget>.dialog*/(
        position: position,
        controller: controller,
        backgroundColor: Colors.black.withAlpha(230),
        // borderRadius: BorderRadius.circular(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(8),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            // textAlign: TextAlign.center,
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      );
    },
  );
}

Future<void> showSuccessToast(
  String message,
  BuildContext context,
) async {
  await showFlash(
    context: context,
    duration: const Duration(seconds: 1),
    builder: (context, controller) {
      return FlashBar(
        backgroundColor: Colors.green,
        controller: controller,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(8),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      );
    },
  );
}
