import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sehhaty/core/theming/styles.dart';

class SehhatyLogoAndName extends StatelessWidget {
  const SehhatyLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/sehhaty_logo.svg'),
        SizedBox(width: 8.w),
        Text(
          'Sehhaty',
          style: Styles.font24BlackBold,
        ),
      ],
    );
  }
}
