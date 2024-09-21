import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/features/auth/screens/onboarding_screen/onboard_screen.dart';
import 'package:grocery_app/features/auth/screens/password_config/forget_password_screen.dart';
import 'package:grocery_app/features/auth/screens/signup/screens/signup_screen.dart';
import 'package:grocery_app/features/auth/screens/signup/screens/verify_email.dart';
import 'package:grocery_app/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: EAppTheme.lightTheme,
        darkTheme: EAppTheme.darkTheme,
        home: const OnboardScreen());
  }
}
