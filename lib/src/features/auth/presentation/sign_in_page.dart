import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/wish_list/shared/providers.dart';
import 'package:classic_shop/src/helpers/custom_form_builder_text_field.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

// final signInFormKeyProvider = Provider((ref) {
//   return GlobalKey<FormBuilderState>();
// });

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  late final GlobalKey<FormBuilderState> formKey;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController usernameController;
  late final TextEditingController telephoneController;
  // late final FocusScopeNode focus;
  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormBuilderState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    usernameController = TextEditingController();
    telephoneController = TextEditingController();
    // focus = FocusScopeNode();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    telephoneController.dispose();
    formKey.currentState?.dispose();
    // focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authNotifierProvider, (previous, next) {
      next.mapOrNull(
        loading: (_) => showDialog<Widget>(
          context: context,
          builder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        authenticated: (_) {
          context.pop();
          Future.wait([
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                ),
            ref.read(cartNotifierProvider.notifier).fetchCart(),
            ref.read(wishListNotifierProvider.notifier).fetchWishList(),
          ]);
        },
        otpVerificationRequired: (_) => context.pop(),
        failure: (value) {
          context.pop();
          value.failure.mapOrNull(
            server: (serverErr) {
              if (serverErr.message != null) {
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
    final appTheme = Theme.of(context);
    // final formKey = ref.watch(signInFormKeyProvider);
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
      body: FormBuilder(
        key: formKey,
        child: ListView(
          children: [
            // height * .40
            ScalableImageWidget(
              si: signUpImage,
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              scale: .5,
            ),
            SizedBox(height: height * .034),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'تسجيل الدخول',
                  style: appTheme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: height * .042),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
            SizedBox(
              height: height * .021,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
            SizedBox(height: height * .034),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  final validated = formKey.currentState?.validate();
                  if (validated != null && validated) {
                    formKey.currentState?.save();
                    FocusScope.of(context).unfocus();
                    final values = formKey.currentState?.fields;
                    ref.read(authNotifierProvider.notifier).signIn(
                          email: values!['email']!.value.toString(),
                          password: values['password']!.value.toString(),
                        );
                    formKey.currentState?.reset();
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
                  'تسجيل دخول',
                  style: appTheme.textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .010,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ليس لديك حساب؟',
                  style: appTheme.textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    formKey.currentState?.reset();
                    context.pushNamed(AppRoute.signUp.name);
                  },
                  child: Text(
                    'إنشاء حساب جديد',
                    style: appTheme.textTheme.bodyMedium?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
