import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sehhaty/core/theming/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final void Function()? onPressed;

  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.buttonText,
    this.buttonTextStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
        ),
        backgroundColor: backgroundColor ?? AppColors.mainBlue,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding?.w ?? 12.w,
          vertical: verticalPadding?.h ?? 14.h,
        ),
        fixedSize:
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 52.h),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: buttonTextStyle,
      ),
    );
  }
}
