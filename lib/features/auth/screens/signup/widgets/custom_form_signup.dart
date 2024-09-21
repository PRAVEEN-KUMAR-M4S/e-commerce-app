import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/features/auth/screens/signup/screens/verify_email.dart';
import 'package:grocery_app/utils/constants/color.dart';
import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';

class CustomFormSignup extends StatelessWidget {
  const CustomFormSignup({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: EAppTextString.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: EAppSizes.spaceBtInputField,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: EAppTextString.lastName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: EAppSizes.spaceBtInputField,
        ),
        TextFormField(
          decoration: const InputDecoration(
              labelText: EAppTextString.userName,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: EAppSizes.spaceBtInputField,
        ),
        TextFormField(
          decoration: const InputDecoration(
              labelText: EAppTextString.email,
              prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: EAppSizes.spaceBtInputField,
        ),
        TextFormField(
          decoration: const InputDecoration(
              labelText: EAppTextString.phoneNumber,
              prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: EAppSizes.spaceBtInputField,
        ),
        TextFormField(
          decoration: const InputDecoration(
              labelText: EAppTextString.password,
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check)),
        ),
        const SizedBox(
          height: EAppSizes.spaceBtSections,
        ),
        Row(
          children: [
            Checkbox(value: true, onChanged: (val) {}),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: EAppTextString.agree,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${EAppTextString.privacy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? EAppColor.white : EAppColor.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? EAppColor.white : EAppColor.primary,
                      )),
              TextSpan(
                  text: '${EAppTextString.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: EAppTextString.terms,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? EAppColor.white : EAppColor.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? EAppColor.white : EAppColor.primary,
                      ))
            ]))
          ],
        ),
        const SizedBox(
          height: EAppSizes.spaceBtSections,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(EAppTextString.createAcc)),
        ),
      ],
    ));
  }
}
