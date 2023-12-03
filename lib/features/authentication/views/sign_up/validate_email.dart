import 'package:b_expence/common/styles/spacing_styles.dart';
import 'package:b_expence/utils/constants/colors.dart';
import 'package:b_expence/utils/constants/image_string.dart';
import 'package:b_expence/utils/constants/sizes.dart';
import 'package:b_expence/utils/constants/text_strings.dart';
import 'package:b_expence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidateEmailView extends StatelessWidget {
  const ValidateEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: BSpacing.paddingWithAppBarHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(BImage.onboarding1),
              width: BHelperFunctions.screenWidth() * 0.8,
              height: BHelperFunctions.screenHeight() * 0.4,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(BSizes.buttonHeight)),
              child: Text(
                BTexts.validateButtonText,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: BColors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            const SizedBox(height: BSizes.spaceBtwItems),
            TextButton(
              onPressed: () => Get.back(),
              child: Text(
                BTexts.switchEmailButtonText,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
