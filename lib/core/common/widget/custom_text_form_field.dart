import 'package:flutter/material.dart';
import 'package:intern_restaurant/core/constant/app_text_styles.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    this.isObscure,
    this.validator,
    this.hintText,
    this.suffixIcon,
    this.controller,
  });
  final bool? isObscure;
  final String? Function(String?)? validator;
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        obscureText: isObscure ?? false,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: AppTextStyle.interBlackRegular10.copyWith(fontSize: 13),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        validator: validator,
      ),
    );
  }
}
