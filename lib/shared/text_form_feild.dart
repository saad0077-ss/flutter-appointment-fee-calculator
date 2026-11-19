import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hindText;
  final String? labelText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;


  const CustomTextFormField({
    super.key,
    this.controller,
    required this.hindText,
    this.labelText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        hintText: hindText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder()
      ),
    );
  }
}