import 'package:flutter/material.dart';
import 'package:grocery_app/common/styles/spacing_style.dart';
import 'package:grocery_app/common/widgets_common_login/custom_divider.dart';
import 'package:grocery_app/common/widgets_common_login/sigin_extra.dart';
import 'package:grocery_app/features/auth/screens/signup/widgets/custom_form_signup.dart';
import 'package:grocery_app/utils/constants/color.dart';
import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/constants/text_string.dart';
import 'package:grocery_app/utils/helper/helper_fun.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EAppHelperFun.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EAppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                EAppTextString.siginHeader,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: EAppSizes.spaceBtSections,
              ),
              CustomFormSignup(dark: dark),
              const SizedBox(
                height: EAppSizes.spaceBtSections,
              ),
              CustomDivider(isDark: dark, text: EAppTextString.signupwith),
              const SizedBox(
                height: EAppSizes.spaceBtSections,
              ),
              const SiginExtra()
            ],
          ),
        ),
      ),
    );
  }
}
