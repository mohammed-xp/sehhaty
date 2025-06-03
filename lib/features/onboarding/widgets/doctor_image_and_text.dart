import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sehhaty/core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/sehhaty_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withValues(alpha: 0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 13,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctors\nAppointment App',
            textAlign: TextAlign.center,
            style: Styles.font32Blue700Weight.copyWith(
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
