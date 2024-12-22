import 'package:classic_shop/src/helpers/custom_form_builder_text_field.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class ChangePasswordPage extends HookConsumerWidget {
  const ChangePasswordPage({
    this.forgotPassword = true,
    super.key,
  });

  final bool forgotPassword;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: forgotPassword
            ? null
            : Text(
                'تغيير كلمة المرور',
                style: appTheme.textTheme.headlineSmall,
              ),
        centerTitle: true,
        actions: forgotPassword
            ? [
                TextButton(
                  onPressed: () async {
                    await showWarningDialog(context, appTheme, setting: false);
                  },
                  child: const Text('إلغاء'),
                ),
              ]
            : null,
      ),
      body: SafeArea(
        child: ChangePasswordBody(forgotPassword: forgotPassword),
      ),
    );
  }
}

class ChangePasswordBody extends HookConsumerWidget {
  const ChangePasswordBody({
    super.key,
    this.forgotPassword = true,
  });

  final bool forgotPassword;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    // final isDarkMode = appTheme.brightness == Brightness.dark;
    final changePasswordImage = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere(
              (element) => element.$1 == SvgAssets.changePassword.name,
            )
            .$2,
      ),
    );
    return FormBuilder(
      child: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          ScalableImageWidget(si: changePasswordImage, scale: .55),
          const SizedBox(height: 32),
          if (forgotPassword) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'قم بتعيين كلمة مرور جديدة',
                style: appTheme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'قم بإنشاء كلمة مرور آمنة لحماية حسابك والوصول إلى معلوماتك بأمان',
                style: appTheme.textTheme.bodySmall?.copyWith(
                  color: const Color(0xFF666666),
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
          if (!forgotPassword) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomFormBuilderTextField(
                textDirection: TextDirection.ltr,
                name: 'oldPassword',
                labelText: 'كلمة المرور القديمة',
                errorStyle: const TextStyle(fontSize: 12),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.email(
                    errorText: 'يرجى إدخال الإيميل الخاص بك بشكل صحيح',
                  ),
                ]),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: CustomFormBuilderTextField(
              textDirection: TextDirection.ltr,
              obscureText: true,
              name: 'newPassword',
              labelText: 'كلمة المرور الجديدة',
              errorStyle: const TextStyle(fontSize: 12),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.minLength(
                  6,
                  errorText: 'كلمة المرور قصيرة جداً',
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: CustomFormBuilderTextField(
              textDirection: TextDirection.ltr,
              obscureText: true,
              name: 'confirmNewPassword',
              labelText: 'تأكيد كلمة المرور الجديدة',
              errorStyle: const TextStyle(fontSize: 12),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.minLength(
                  6,
                  errorText: 'كلمة المرور قصيرة جداً',
                ),
              ]),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff9D331F),
                disabledBackgroundColor: Colors.grey,
                fixedSize: const Size(double.maxFinite, 56),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              child: Text(
                'حفظ كلمة المرور',
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
