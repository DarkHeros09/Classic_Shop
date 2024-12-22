import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:pinput/pinput.dart';

class OTPPage extends HookConsumerWidget {
  const OTPPage({
    this.signIn = true,
    this.setting = true,
    super.key,
  });

  final bool signIn;
  final bool setting;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: !signIn,
        leading: signIn
            ? BackButton(
                onPressed: () {
                  context.pop();
                  ref.read(authNotifierProvider.notifier).signOut();
                },
              )
            : null,
        actions: [
          TextButton(
            onPressed: () async {
              await showWarningDialog(context, appTheme, setting: setting);
            },
            child: const Text('إلغاء'),
          ),
        ],
      ),
      body: SafeArea(
        child: OTPBody(signIn: signIn),
      ),
    );
  }
}

class OTPBody extends HookConsumerWidget {
  const OTPBody({
    super.key,
    this.signIn = true,
  });

  final bool signIn;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final controller = useTextEditingController();
    final otpImage = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere(
              (element) => element.$1 == SvgAssets.enterOtp.name,
            )
            .$2,
      ),
    );
    return Column(
      children: [
        ScalableImageWidget(si: otpImage, scale: .55),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'رقم التحقق',
            style: appTheme.textTheme.bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'لقد أرسلنا رمز التحقق إلى عنوان بريدك الإلكتروني',
            style: appTheme.textTheme.bodySmall
                ?.copyWith(color: const Color(0xFF666666)),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Pinput(
              length: 6,
              controller: controller,
              inputFormatters: [
                LengthLimitingTextInputFormatter(6),
                FilteringTextInputFormatter.digitsOnly,
              ],
              defaultPinTheme: PinTheme(
                height: 64,
                width: 64,
                textStyle: appTheme.textTheme.headlineSmall,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: const Color(0xffD9D9D9),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: ElevatedButton(
            onPressed: signIn
                ? () {
                    ref.read(authNotifierProvider.notifier).verifyOTP(
                          otp: controller.text,
                        );
                  }
                : () {
                    context.pushNamed(AppRoute.changePasswordOTP.name);
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff9D331F),
              disabledBackgroundColor: Colors.grey,
              fixedSize: const Size(double.maxFinite, 56),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            child: Text(
              'تحقق من الرمز',
              style: appTheme.textTheme.bodySmall?.copyWith(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OTPTextField extends HookConsumerWidget {
  const OTPTextField({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final focusNode = useFocusNode();
    return Expanded(
      child: SizedBox(
        height: 64,
        width: 64,
        child: FormBuilderTextField(
          name: name,
          focusNode: focusNode,
          textDirection: TextDirection.ltr,
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Color(0xffD9D9D9),
              ),
            ),
            fillColor: Color(0xffFAFAFA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          style: appTheme.textTheme.headlineSmall,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (value) {
            if (value?.length == 1 && name != '6') {
              FocusScope.of(context).nextFocus();
            }
            if (value?.length == 0 && name != '1') {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }
}
