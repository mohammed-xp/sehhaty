import 'package:flutter/material.dart';
import 'package:sehhaty/core/theming/styles.dart';

class AlreadyHaveAcountTextWidget extends StatelessWidget {
  const AlreadyHaveAcountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: Styles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: 'Sign Up',
            style: Styles.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
