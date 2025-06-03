import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sehhaty/core/theming/app_colors.dart';

class Styles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32Blue700Weight = TextStyle(
    fontSize: 32.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font13Gray400Weight = TextStyle(
    fontSize: 13.sp,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font16White600Weight = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}
