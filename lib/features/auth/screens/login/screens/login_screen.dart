import 'package:flutter/material.dart';
import 'package:grocery_app/common/styles/spacing_style.dart';
import 'package:grocery_app/common/widgets_common_login/custom_divider.dart';
import 'package:grocery_app/features/auth/screens/login/widgets/custom_form.dart';
import 'package:grocery_app/features/auth/screens/login/widgets/header.dart';
import 'package:grocery_app/common/widgets_common_login/sigin_extra.dart';

import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/constants/text_string.dart';

import 'package:grocery_app/utils/helper/helper_fun.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = EAppHelperFun.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EAppSpacingStyle.paddingWithAppbar,
          child: Column(
            children: [
              const Header(),
              const CustomForm(),
              CustomDivider(
                isDark: isDark,
                text: EAppTextString.signinwith,
              ),
              const SizedBox(
                height: EAppSizes.spaceBtItems,
              ),
              const SiginExtra()
            ],
          ),
        ),
      ),
    );
  }
}
