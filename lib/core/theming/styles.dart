import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sehhaty/core/theming/app_colors.dart';
import 'package:sehhaty/core/theming/font_weight_helper.dart';

class Styles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14LightGrayMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.lightGray,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
}
