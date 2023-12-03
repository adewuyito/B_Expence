import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:b_expence/utils/constants/sizes.dart';
import 'package:b_expence/utils/constants/text_strings.dart';
import 'package:b_expence/features/authentication/views/sign_up/sign_up.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: BSizes.spaceBtwSections),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Email
            Text(BTexts.emailHeaderText, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: BSizes.spaceBtwItems * .5),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: TextEditingController(),
              decoration: const InputDecoration(labelText: BTexts.emailTextField),
            ),
            // Spacing
            const SizedBox(height: BSizes.spaceBtwItems),
            // Password
            Text(BTexts.passWordHeaderText, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: BSizes.spaceBtwItems * .5),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              controller: TextEditingController(),
              decoration: const InputDecoration(
                labelText: BTexts.passWordTextField,
                suffixIcon: LineIcon.lowVision(),
              ),
            ),
            const SizedBox(height: BSizes.spaceBtwSections),
            // Login Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(BSizes.buttonHeight)),
              child: const Text(BTexts.loginButtonText),
            ),
            // Spacing
            const SizedBox(height: BSizes.spaceBtwItems),
            // Create Account
            OutlinedButton(
              onPressed: () {
                Get.to(const SignUpView());
              },
              style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(BSizes.buttonHeight)),
              child: const Text(BTexts.signUpButtonText),
            ),
          ],
        ),
      ),
    );
  }
}
