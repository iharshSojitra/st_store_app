import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final filled;
  final hintText;
  final prefixIcon;
  final suffixIcon;
  final labelText;
  final keyboardType;
  final maxLength;
  final TextEditingController? controller;
  final bool? obscure;
  final String? Function(String?)? validator;

  const CommonTextField({
    Key? key,
    this.filled,
    this.controller,
    this.obscure = false,
    this.validator,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    this.keyboardType,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        maxLength: maxLength,
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscure!,
        validator: validator,
        decoration: InputDecoration(
          filled: filled,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
        ));
  }
}
