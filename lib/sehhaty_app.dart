import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sehhaty/core/routing/app_router.dart';
import 'package:sehhaty/core/routing/routes.dart';
import 'package:sehhaty/core/theming/app_colors.dart';

class SehhatyApp extends StatelessWidget {
  final AppRouter appRouter;
  const SehhatyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Sehhaty',
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          primaryColor: AppColors.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
