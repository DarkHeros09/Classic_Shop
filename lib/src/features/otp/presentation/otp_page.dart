import 'package:classic_shop/src/features/address/presentation/add_address.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pinput.dart';

class OTPPage extends HookConsumerWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(formKeyProvider);
    final controller = useTextEditingController();
    final appTheme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                leading: BackButton(
                  onPressed: () {
                    context.pop();
                    ref.read(authNotifierProvider.notifier).signOut();
                  },
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 56),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'رقم التحقق',
                    style: appTheme.textTheme.headlineSmall,
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'لقد أرسلنا رمز التحقق إلى عنوان بريدك الإلكتروني',
                    style: appTheme.textTheme.bodyLarge
                        ?.copyWith(color: const Color(0xFF666666)),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 48),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: const Color(0xffD9D9D9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //  FormBuilder(
                  //   key: formKey,
                  //   child: const Row(
                  //     textDirection: TextDirection.ltr,
                  //     children: [
                  //       OTPTextField(name: '1'),
                  //       SizedBox(width: 12),
                  //       OTPTextField(name: '2'),
                  //       SizedBox(width: 12),
                  //       OTPTextField(name: '3'),
                  //       SizedBox(width: 12),
                  //       OTPTextField(name: '4'),
                  //       SizedBox(width: 12),
                  //       OTPTextField(name: '5'),
                  //       SizedBox(width: 12),
                  //       OTPTextField(name: '6'),
                  //     ],
                  //   ),
                  // ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 56),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      ref.read(authNotifierProvider.notifier).verifyOTP(
                            otp: controller.text,
                          );
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
              ),
            ],
          ),
        ),
      ),
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
