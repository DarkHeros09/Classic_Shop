import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomFormBuilderTextField extends StatelessWidget {
  const CustomFormBuilderTextField({
    required this.name,
    required this.validator,
    super.key,
    this.textDirection,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
    this.errorText,
    this.labelText,
    this.hintTextDirection,
    this.errorStyle,
  });

  final String name;
  final String? Function(String?)? validator;
  final TextDirection? textDirection;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final String? errorText;
  final String? labelText;
  final TextDirection? hintTextDirection;
  final TextStyle? errorStyle;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      obscureText: obscureText,
      textDirection: textDirection,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        errorText: errorText,
        errorStyle: errorStyle,
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintTextDirection: hintTextDirection,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffD9D9D9),
          ),
        ),
        fillColor: const Color(0xffFAFAFA),
        border: const OutlineInputBorder(),
      ),
      name: name,
      validator: validator,
    );
  }
}
