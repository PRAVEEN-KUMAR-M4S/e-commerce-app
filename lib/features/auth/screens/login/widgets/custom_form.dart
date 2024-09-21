import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/features/auth/screens/password_config/forget_password_screen.dart';
import 'package:grocery_app/features/auth/screens/signup/screens/signup_screen.dart';
import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: EAppSizes.spaceBtSections),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: EAppTextString.email),
          ),
          const SizedBox(
            height: EAppSizes.spaceBtInputField,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: EAppTextString.password),
          ),
          const SizedBox(
            height: EAppSizes.spaceBtInputField / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (val) {}),
                  const Text(EAppTextString.rememberMe)
                ],
              ),
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: const Text(EAppTextString.forgetPassword))
            ],
          ),
          const SizedBox(
            height: EAppSizes.spaceBtSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text(EAppTextString.signIN)),
          ),
          const SizedBox(
            height: EAppSizes.spaceBtItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(EAppTextString.createAcc)),
          ),
          const SizedBox(
            height: EAppSizes.spaceBtSections,
          ),
        ],
      ),
    ));
  }
}
