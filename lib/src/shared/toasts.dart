import 'package:classic_shop/src/helpers/locale_extension.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

Future<void> showWarningDialog(
  BuildContext context,
  ThemeData appTheme, {
  required bool setting,
}) async {
  await showModalFlash<bool>(
    useRootNavigator: true,
    barrierBlur: 2,
    context: context,
    builder: (context, controller) => AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceAround,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // icon: const Icon(
      //   Icons.warning_rounded,
      //   color: Colors.amber,
      //   size: 50,
      // ),
      // title: const Text('Flash'),
      title: const Text(
        'هل أنت متأكد أنك تريد إلغاء استعادة كلمة المرور؟',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Text(
        'لن يتم حفظ أي تقدم في عملية استعادة كلمة المرور، وستحتاج إلى البدء من جديد إذا قمت بالإلغاء.',
        // textAlign: TextAlign.center,
        style: TextStyle(
          height: 1.5,
          color: Colors.grey[700],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () async {
            context.pop();
            if (setting) {
              context.goNamed(AppRoute.settings.name);
            } else {
              context.goNamed(AppRoute.cart.name);
            }
          },
          style: FilledButton.styleFrom(
            disabledBackgroundColor: Colors.grey,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          child: Text(
            'نعم، ألغِ العملية',
            style: appTheme.textTheme.bodyMedium?.copyWith(color: Colors.red),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          child: Text(
            'لا، أريد الاستمرار',
            style: appTheme.textTheme.bodyMedium,
            // ?.copyWith(color: Colors.blue),
          ),
        ),
      ],
    ),
  );
}
