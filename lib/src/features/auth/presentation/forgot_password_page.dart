import 'package:classic_shop/src/helpers/custom_form_builder_text_field.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class ForgotPasswordPage extends HookConsumerWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: ForgotPasswordBody(),
      ),
    );
  }
}

class ForgotPasswordBody extends StatefulHookConsumerWidget {
  const ForgotPasswordBody({super.key});

  @override
  ConsumerState<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends ConsumerState<ForgotPasswordBody> {
  late final GlobalKey<FormBuilderState> formKey;
  late final TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormBuilderState>();
    emailController = TextEditingController();
    // focus = FocusScopeNode();
  }

  @override
  void dispose() {
    formKey.currentState?.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final forgotPasswordImage = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere(
              (element) => element.$1 == SvgAssets.forgotPassword.name,
            )
            .$2,
      ),
    );
    return FormBuilder(
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          ScalableImageWidget(
            si: forgotPasswordImage,
            scale: .55,
          ),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'نسيت كلمة المرور؟',
                style: appTheme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'يرجى إدخال البريد الإلكتروني الخاص بك لإعادة تعيين كلمة المرور',
              style: appTheme.textTheme.bodySmall?.copyWith(
                color: const Color(0xFF666666),
                height: 1.5,
              ),
              // textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: CustomFormBuilderTextField(
              textDirection: TextDirection.ltr,
              name: 'otpEmail',
              labelText: 'البريد الإلكتروني',
              errorStyle: const TextStyle(fontSize: 12),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.email(
                  errorText: 'يرجى إدخال الإيميل الخاص بك بشكل صحيح',
                ),
              ]),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: ElevatedButton(
              onPressed: () {
                final validated = formKey.currentState?.validate();
                context.pushNamed(AppRoute.forgotPasswordOTP.name);
                if (validated != null && validated) {
                  formKey.currentState?.save();
                  FocusScope.of(context).unfocus();
                  final values = formKey.currentState?.fields;
                  // ref.read(authNotifierProvider.notifier).signIn(
                  //       email: values!['email']!.value.toString(),
                  //       password: values['password']!.value.toString(),
                  //     );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff9D331F),
                disabledBackgroundColor: Colors.grey,
                fixedSize: const Size(double.maxFinite, 56),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              child: Text(
                'إرسال',
                style: appTheme.textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
