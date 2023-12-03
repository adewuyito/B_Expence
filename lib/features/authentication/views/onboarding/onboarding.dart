import 'dart:developer';

import 'package:b_expence/utils/device/device_utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:b_expence/features/authentication/views/onboarding/widgets/onboarding_widgets.dart';
import 'package:b_expence/features/authentication/controllers/onboarding/onboarding_controllers.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [

          Padding(
            padding: EdgeInsets.only(top: BDeviceUtils.getScreenHeight() * 0.1),
            child: PageView(
              controller: controller.pageController,
              onPageChanged: (index) {
                controller.upadatPageIndicator(index);
                log(index.toString());
              },
              children: const <Widget>[
                Onboarding(index: 1),
                Onboarding(index: 2),
                Onboarding(index: 3),
              ],
            ),
          ),
          const AbsolutWidgetColumn(),
        ],
      ),
    );
  }
}
