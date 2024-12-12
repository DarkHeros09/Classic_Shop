import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/notification/application/notification_notifier.dart';
import 'package:classic_shop/src/helpers/custom_form_builder_text_field.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

// final signUpFormKeyProvider = Provider((ref) {
//   return GlobalKey<FormBuilderState>();
// });

class SignUpPage extends StatefulHookConsumerWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  late final GlobalKey<FormBuilderState> formKey;
  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormBuilderState>();
  }

  @override
  void dispose() {
    formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    ref.listen(authNotifierProvider, (previous, next) {
      next.mapOrNull(
        loading: (_) => showDialog<Widget>(
          context: context,
          builder: (context) => Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
        failure: (value) {
          value.failure.mapOrNull(
            server: (serverErr) {
              if (serverErr.message?.contains('user_email_key') ?? false) {
                {
                  return showAuthErrorToast(
                    'حدث خطأ ما, إسم المستخدم أو البريد الإلكتروني موجود مسبقاً.',
                    context,
                  );
                }
              } else if (serverErr.message != null) {
                return showAuthErrorToast(
                  'حدث خطأ ما.',
                  context,
                );
              }
            },
          );
        },
      );
    });
    // final formKey = ref.watch(signUpFormKeyProvider);
    final height = MediaQuery.sizeOf(context).height + kToolbarHeight;
    final signUpImage = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere(
              (element) => element.$1 == SvgAssets.signUp.name,
            )
            .$2,
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: FormBuilder(
          key: formKey,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                // floating: true,
                pinned: true,
                expandedHeight: height * .20,
                flexibleSpace: FlexibleSpaceBar(
                  background: ScalableImageWidget(
                    si: signUpImage,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                    scale: .8,
                  ),
                  // SvgPicture.asset(
                  //   height: height * .35,
                  //   Assets.mobileLoginCuateCropped,
                  //   fit: BoxFit.cover,
                  //   alignment: Alignment.topCenter,
                  // ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: height * .034)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'إنشاء حساب جديد',
                    style: appTheme.textTheme.bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: height * .042)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: CustomFormBuilderTextField(
                    // textDirection: TextDirection.ltr,
                    name: 'userName',
                    labelText: 'إسم المستخدم',
                    errorStyle: const TextStyle(fontSize: 12),
                    validator: FormBuilderValidators.compose([]),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: height * .021)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: CustomFormBuilderTextField(
                    textDirection: TextDirection.ltr,
                    name: 'email',
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
              ),
              // SliverToBoxAdapter(child: SizedBox(height: height * .021)),
              // SliverToBoxAdapter(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 16),
              //     child: CustomFormBuilderTextField(
              //       // textDirection: TextDirection.ltr,
              //       name: 'phoneNumber',
              //       labelText: 'رقم الهاتف',
              //       errorStyle: const TextStyle(fontSize: 12),
              //       validator: FormBuilderValidators.compose([
              //         FormBuilderValidators.required(
              //           errorText: 'هذا الحقل لا يمكن أن يكون فارغاً',
              //         ),
              //         FormBuilderValidators.minLength(
              //           9,
              //           errorText: 'كلمة المرور قصيرة جداً',
              //         ),
              //         FormBuilderValidators.numeric(
              //           errorText: 'الرجاء إدخال الرقم بالصيغة الصحيحة',
              //         ),
              //       ]),
              //       keyboardType: TextInputType.phone,
              //     ),
              //   ),
              // ),
              SliverToBoxAdapter(child: SizedBox(height: height * .021)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: CustomFormBuilderTextField(
                    textDirection: TextDirection.ltr,
                    obscureText: true,
                    name: 'password',
                    labelText: 'كلمة المرور',
                    errorStyle: const TextStyle(fontSize: 12),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.minLength(
                        6,
                        errorText: 'كلمة المرور قصيرة جداً',
                      ),
                    ]),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: height * .021)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: CustomFormBuilderTextField(
                    textDirection: TextDirection.ltr,
                    obscureText: true,
                    name: 'passwordConfirmation',
                    labelText: 'تأكيد كلمة المرور',
                    errorStyle: const TextStyle(fontSize: 12),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.minLength(
                        6,
                        errorText: 'كلمة المرور قصيرة جداً',
                      ),
                      (value) {
                        final equalOrErr = formKey
                                    .currentState?.fields['password']?.value
                                    .toString() ==
                                formKey.currentState
                                    ?.fields['passwordConfirmation']?.value
                                    .toString()
                            ? null
                            : 'كلمة المرور ليست متطابقة';
                        return equalOrErr;
                      }
                    ]),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: height * .034),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: ElevatedButton(
                    onPressed: () {
                      final validated = formKey.currentState?.validate();
                      if (validated != null && validated) {
                        formKey.currentState?.save();
                        FocusScope.of(context).unfocus();
                        final values = formKey.currentState?.fields;
                        ref
                            .read(authNotifierProvider.notifier)
                            .signUp(
                              username: values!['userName']!.value.toString(),
                              // telephone: int.parse(
                              //   values['phoneNumber']!.value.toString(),
                              // ),
                              email: values['email']!.value.toString(),
                              password: values['password']!.value.toString(),
                            )
                            .then(
                              (_) => ref
                                  .read(notificationNotifierProvider.notifier)
                                  .createNotification(),
                            );
                        // formKey.currentState?.reset();
                      }
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
                      'إنشاء حساب',
                      style: appTheme.textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: height * .015,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'هل لديك حساب بالفعل؟',
                      style: appTheme.textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (context.mounted) {
                          context.pop();
                        }
                      },
                      child: Text(
                        'تسجيل دخول',
                        style: appTheme.textTheme.bodyMedium?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: height * .1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
