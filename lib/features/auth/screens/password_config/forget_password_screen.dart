import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/features/auth/screens/password_config/reset_password_screen.dart';
import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(EAppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              EAppTextString.forgetPasswodHeading,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: EAppSizes.spaceBtItems,
            ),
            Text(
              EAppTextString.forgetPassSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: EAppSizes.spaceBtSections * 2,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: EAppTextString.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            SizedBox(
              height: EAppSizes.spaceBtSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPasswordScreen()),
                  child: const Text('Submit')),
            )
          ],
        ),
      ),
    );
  }
}
