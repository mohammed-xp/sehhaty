import 'package:flutter/material.dart';
import 'package:sehhaty/core/routing/routes.dart';
import 'package:sehhaty/features/login/ui/login_screen.dart';
import 'package:sehhaty/features/onboarding/ui/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this: (arguments as ClassName)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name} ',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
        );
    }
  }
}
