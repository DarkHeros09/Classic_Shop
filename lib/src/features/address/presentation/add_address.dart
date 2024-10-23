import 'package:classic_shop/src/features/address/domain/address.dart';
import 'package:classic_shop/src/features/address/shared/provider.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/helpers/custom_form_builder_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final formKeyProvider = Provider((ref) {
  return GlobalKey<FormBuilderState>();
});

class AddAddress extends ConsumerWidget {
  const AddAddress({this.address, super.key});

  final Address? address;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    // final formKey = GlobalKey<FormBuilderState>();
    final formKey = ref.watch(formKeyProvider);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              title: Text(
                'إضافة عنوان جديد',
                // style: GoogleFonts.notoKufiArabic(
                //   fontSize: 20,
                //   fontWeight: FontWeight.w400,
                //   color: Colors.black,
                // ),
                style: appTheme.textTheme.headlineSmall,
              ),
              centerTitle: true,
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('إلغاء'),
                ),
              ],
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FormBuilder(
                  key: formKey,
                  initialValue: {
                    'name': address?.name,
                    'city': address?.city,
                    'region': address?.region,
                    'deliveryAddress': address?.addressLine,
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // _TextFieldLabel(
                      //   labelName: 'الإسم بالكامل',
                      //   icon: Icons.person,
                      // ),
                      // SizedBox(height: 4),
                      // CustomFormBuilderTextField(name: 'fullName'),
                      // SizedBox(height: 16),
                      const _TextFieldLabel(
                        labelName: 'الإسم',
                        icon: Icons.location_city_rounded,
                      ),
                      const SizedBox(height: 4),
                      CustomFormBuilderTextField(
                        name: 'name',
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.username(),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      const _TextFieldLabel(
                        labelName: 'رقم الهاتف',
                        icon: Icons.call,
                      ),
                      const SizedBox(height: 4),
                      CustomFormBuilderTextField(
                        name: 'telephone',
                        inputType: TextInputType.phone,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: FormBuilderValidators.compose([
                          // FormBuilderValidators.numeric(
                          //   errorText: 'الرجاء إدخال الرقم بالصيغة الصحيحة',
                          // ),
                          FormBuilderValidators.phoneNumber(
                            errorText: 'الرجاء إدخال الرقم بالصيغة الصحيحة',
                          ),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      const _TextFieldLabel(
                        labelName: 'المدينة',
                        icon: Icons.location_city_rounded,
                      ),
                      const SizedBox(height: 4),
                      const CustomFormBuilderTextField(name: 'city'),
                      const SizedBox(height: 16),
                      const _TextFieldLabel(
                        labelName: 'المنطقة',
                        icon: Icons.location_searching,
                      ),
                      const SizedBox(height: 4),
                      const CustomFormBuilderTextField(name: 'region'),
                      const SizedBox(height: 16),
                      const _TextFieldLabel(
                        labelName: 'عنوان التسليم',
                        icon: Icons.location_on,
                      ),
                      const SizedBox(height: 4),
                      const CustomFormBuilderTextField(
                        name: 'deliveryAddress',
                      ),
                      const SizedBox(height: 16),
                      // _TextFieldLabel(
                      //   labelName: 'رقم الهاتف',
                      //   icon: Icons.phone,
                      // ),
                      // SizedBox(height: 4),
                      // CustomFormBuilderTextField(name: 'phoneNumber'),
                      _AddressSaveButton(address),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddressSaveButton extends ConsumerWidget {
  const _AddressSaveButton(this.address);
  final Address? address;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final addressNotifier = ref.watch(addressNotifierProvider.notifier);
    final formKey = ref.watch(formKeyProvider);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ElevatedButton(
          onPressed: () async {
            final user = await ref.read(userStorageProvider).read();
            if (user != null) {
              final isValidated = formKey.currentState?.validate();
              if (isValidated != null && isValidated) {
                if (address != null) {
                  formKey.currentState?.save();
                  final values = formKey.currentState?.fields;
                  final updatedAddress = Address(
                    userId: user.id,
                    id: address?.id,
                    defaultAddress: address?.defaultAddress,
                    name: values?['name']?.value.toString() ?? '',
                    telephone: int.parse(
                      values?['phoneNumber']!.value.toString() ?? '0',
                    ),
                    addressLine:
                        values?['deliveryAddress']?.value.toString() ?? '',
                    region: values?['region']?.value.toString() ?? '',
                    city: values?['city']?.value.toString() ?? '',
                  );
                  await addressNotifier.updateAddress(updatedAddress);
                  if (context.mounted) Navigator.pop(context);
                } else {
                  formKey.currentState?.save();
                  final values = formKey.currentState?.fields;
                  final newAddress = Address(
                    userId: user.id,
                    id: null,
                    defaultAddress: address?.defaultAddress,
                    name: values?['name']?.value.toString() ?? '',
                    telephone: int.parse(
                      values?['phoneNumber']!.value.toString() ?? '0',
                    ),
                    addressLine:
                        values?['deliveryAddress']?.value.toString() ?? '',
                    region: values?['region']?.value.toString() ?? '',
                    city: values?['city']?.value.toString() ?? '',
                  );
                  await addressNotifier.createAddress(newAddress, user.id);
                  formKey.currentState?.reset();
                  if (context.mounted) Navigator.pop(context);
                }
              }
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff9D331F),
            fixedSize: const Size(double.maxFinite, 64),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          child: Text(
            'حفظ العنوان',
            style: appTheme.textTheme.bodySmall?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _TextFieldLabel extends StatelessWidget {
  const _TextFieldLabel({
    required this.labelName,
    required this.icon,
  });

  final String labelName;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 8,
        ),
        Text(
          labelName,
          style: appTheme.textTheme.bodyLarge!
              .copyWith(color: const Color(0xff7D7979)),
        ),
      ],
    );
  }
}

// class CustomFormBuilderTextField1 extends StatelessWidget {
//   const CustomFormBuilderTextField1({
//     required this.name,
//     this.inputType,
//     this.optionalValidator1,
//     this.optionalValidator2,
//   });

//   final String name;
//   final TextInputType? inputType;
//   final FormFieldValidator<String>? optionalValidator1;
//   final FormFieldValidator<String>? optionalValidator2;

//   @override
//   Widget build(BuildContext context) {
//     return FormBuilderTextField(
//       decoration: const InputDecoration(
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(
//             color: Color(0xffD9D9D9),
//           ),
//         ),
//         fillColor: Color(0xffFAFAFA),
//         border: OutlineInputBorder(),
//       ),
//       name: name,
//       validator: FormBuilderValidators.compose([
//         FormBuilderValidators.required(
//           errorText: 'هذا الحقل لا يمكن أن يكون فارغاً',
//         ),
//         if (optionalValidator1 != null) ...[
//           optionalValidator1!,
//         ],
//         if (optionalValidator2 != null) ...[
//           optionalValidator2!,
//         ],
//       ]),
//       keyboardType: inputType,
//     );
//   }
// }
