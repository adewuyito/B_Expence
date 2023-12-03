import 'package:b_expence/features/authentication/views/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:b_expence/utils/theme/theme.dart';
// import 'package:b_expence/app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: BAppTheme.lightTheme,
      darkTheme: BAppTheme.darkTheme,
      home: const OnboardingView(),
    );
  }
}
