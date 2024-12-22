import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomFormBuilderTextField extends StatefulWidget {
  const CustomFormBuilderTextField({
    required this.name,
    this.validator,
    super.key,
    this.textDirection,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
    this.errorText,
    this.labelText,
    this.hintTextDirection,
    this.errorStyle,
    this.inputType,
    this.inputFormatters,
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
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<CustomFormBuilderTextField> createState() =>
      _CustomFormBuilderTextFieldState();
}

class _CustomFormBuilderTextFieldState
    extends State<CustomFormBuilderTextField> {
  late final FocusNode focusNode;
  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      obscureText: widget.obscureText,
      textDirection: widget.textDirection,
      keyboardType: widget.keyboardType,
      focusNode: focusNode,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        errorText: widget.errorText,
        errorStyle: widget.errorStyle,
        labelText: widget.labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintTextDirection: widget.hintTextDirection,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Color(0xffD9D9D9),
          ),
        ),
        fillColor: const Color(0xffFAFAFA),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      name: widget.name,
      inputFormatters: widget.inputFormatters,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(
          errorText: 'هذا الحقل لا يمكن أن يكون فارغاً',
        ),
        if (widget.validator != null) ...[
          widget.validator!,
        ],
      ]),
    );
  }
}
