import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sehhaty/core/theming/styles.dart';
import 'package:sehhaty/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:sehhaty/features/onboarding/widgets/get_started_button.dart';
import 'package:sehhaty/features/onboarding/widgets/sehhaty_logo_and_name.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(top: 24.h, bottom: 32.h),
          child: Column(
            children: [
              SehhatyLogoAndName(),
              SizedBox(
                height: 41.h,
              ),
              DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Sehhaty to get a new experience.',
                      style: Styles.font13Gray400Weight,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32.h),
                    GetStartedButton(),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
