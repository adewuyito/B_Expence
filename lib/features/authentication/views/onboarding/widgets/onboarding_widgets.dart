import 'package:flutter/material.dart';
import 'package:b_expence/utils/constants/text_strings.dart';
import 'package:b_expence/utils/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:b_expence/utils/device/device_utilities.dart';
import 'package:b_expence/utils/constants/sizes.dart';
import 'package:b_expence/utils/helpers/custom_functions.dart';
import 'package:b_expence/utils/helpers/helper_function.dart';
import 'package:b_expence/features/authentication/controllers/onboarding/onboarding_controllers.dart';

class Onboarding extends StatelessWidget {
  final int index;
  const Onboarding({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(BSizes.defaultSpacing),
      child: Column(
        children: [
          Image(
            image: AssetImage(BCustomFunctions.onboardingHeaderImage(index)),
            width: BHelperFunctions.screenWidth() * 0.6,
            height: BHelperFunctions.screenHeight() * 0.4,
          ),
          const SizedBox(height: BSizes.onBoardingImgPadding),
          Text(
            BCustomFunctions.onboardingHeaderString(index),
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: BSizes.spaceBtwItems),
          Text(
            BCustomFunctions.onboardingSubHeaderString(index),
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class AbsolutWidgetColumn extends StatelessWidget {
  const AbsolutWidgetColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: BDeviceUtils.getBottomNavigationBarHeight() + 15,
      left: BSizes.defaultSpacing,
      right: BSizes.defaultSpacing,
      child: Column(
        children: [
          SmoothPageIndicator(
            effect: ExpandingDotsEffect(
              activeDotColor: isDark ? BColors.primary : BColors.black,
              dotHeight: 9,
            ),
            controller: controller.pageController,
            onDotClicked: controller.dotNavigation,
            count: 3,
          ),
          const SizedBox(height: BSizes.xl),
          ElevatedButton(
            onPressed: OnBoardingController.instance.nextPage,
            style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(BSizes.buttonHeight)),
            child: const Text(BTexts.nextButton),
          ),
          TextButton(
            onPressed: OnBoardingController.instance.skipPage,
            child: Text(
              BTexts.skipButton,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
