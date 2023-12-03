import 'package:b_expence/common/widgets/form_field_widget.dart';
import 'package:b_expence/features/authentication/views/Login/login.dart';
import 'package:b_expence/features/authentication/views/sign_up/validate_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:b_expence/utils/constants/sizes.dart';
import 'package:b_expence/utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: BSizes.spaceBtwSections),
      child: Form(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Full name
            CustomFormField(
              keyboard: TextInputType.name,
              controller: TextEditingController(),
              label: BTexts.nameTextField,
              header: BTexts.nameHeaderText,
              suffixIcon: null,
            ),
            // Email
            CustomFormField(
              keyboard: TextInputType.emailAddress,
              controller: TextEditingController(),
              label: BTexts.emailTextField,
              header: BTexts.emailHeaderText,
              suffixIcon: null,
            ),
            // Password
            CustomFormField(
              keyboard: TextInputType.visiblePassword,
              controller: TextEditingController(),
              label: BTexts.passWordTextField,
              header: BTexts.passWordHeaderText,
              suffixIcon: const LineIcon.lowVision(),
            ),
            // Re Password
            CustomFormField(
              keyboard: TextInputType.visiblePassword,
              controller: TextEditingController(),
              label: BTexts.rePassWordTextField,
              header: BTexts.rePassWordHeaderText,
              suffixIcon: const LineIcon.lowVision(),
            ),
            // Create Account
            ElevatedButton(
              onPressed: () => Get.to(const ValidateEmailView()),
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(BSizes.buttonHeight)),
              child: const Text(BTexts.signUpButtonText),
            ),
            // Spacing
            const SizedBox(height: BSizes.spaceBtwItems * .5),
            // Login Button
            TextButton(
              onPressed: () => Get.to(const LoginView()),
              child: Text(
                BTexts.skipButton,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
