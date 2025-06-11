import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sehhaty/core/theming/app_colors.dart';
import 'package:sehhaty/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: backgroundColor ?? AppColors.whiteGray,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 14.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: AppColors.mainBlue,
                width: 1,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: AppColors.lighterGray,
                width: 1,
              ),
            ),
        hintStyle: hintStyle ?? Styles.font14LightGrayMedium,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? Styles.font14DarkBlueMedium,
    );
  }
}
