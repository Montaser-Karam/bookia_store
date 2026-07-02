import 'package:flutter/material.dart';
import 'package:bookia_store/core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColors.gray, fontSize: 15),
        filled: true,
        fillColor: AppColors.background,
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primary),
        ),
      ),
    );
  }
}
