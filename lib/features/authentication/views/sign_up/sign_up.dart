import "package:b_expence/common/styles/spacing_styles.dart";
import "package:b_expence/common/widgets/divider_widget.dart";
import 'package:b_expence/features/authentication/views/sign_up/widgets/sign_up_widgets.dart';
import "package:b_expence/utils/constants/sizes.dart";
import "package:b_expence/utils/constants/text_strings.dart";
import "package:b_expence/utils/helpers/helper_function.dart";
import "package:flutter/material.dart";

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacing.paddingWithAppBarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                BTexts.loginHeaderText,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: BSizes.spaceBtwItems * .5),
              Text(
                BTexts.loginSubHeaderText,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SignUpForm(),
              CustomDivider(isDark: isDark, message: BTexts.loginPromptText),
            ],
          ),
        ),
      ),
    );
  }
}
