import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sehhaty/core/helpers/spacing.dart';
import 'package:sehhaty/core/theming/styles.dart';
import 'package:sehhaty/core/widgets/app_text_button.dart';
import 'package:sehhaty/core/widgets/app_text_form_field.dart';
import 'package:sehhaty/features/login/ui/widgets/already_have_acount_text_widget.dart';
import 'package:sehhaty/features/login/ui/widgets/terms_and_conditions_text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: Styles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: Styles.font14GrayRegular.copyWith(
                    height: 1.8,
                  ),
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: 'Email',
                      ),
                      verticalSpace(16),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(16),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: Styles.font12BlueRegular,
                        ),
                      ),
                      verticalSpace(32),
                      AppTextButton(
                        buttonText: 'Login',
                        buttonTextStyle: Styles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      verticalSpace(32),
                      TermsAndConditionsTextWidget(),
                      verticalSpace(24),
                      AlreadyHaveAcountTextWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
