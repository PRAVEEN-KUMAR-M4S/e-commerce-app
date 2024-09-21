import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/success_screen/success_screen.dart';
import 'package:grocery_app/features/auth/screens/login/screens/login_screen.dart';
import 'package:grocery_app/utils/constants/assets_const.dart';

import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/constants/text_string.dart';
import 'package:grocery_app/utils/helper/helper_fun.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EAppSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(EAppAssetsConst.emailRecived),
                width: EAppHelperFun.screenWidth(),
              ),
              const SizedBox(
                height: EAppSizes.spaceBtItems,
              ),
              Text(
                EAppTextString.verifyEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: EAppSizes.spaceBtItems,
              ),
              Text(
                "praveenkumarotp3@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: EAppSizes.spaceBtItems,
              ),
              Text(
                EAppTextString.confirmationSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: EAppSizes.spaceBtSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => SuccessScreen(
                            image: EAppAssetsConst.createAccount,
                            title: EAppTextString.accountSuccess,
                            subTitle: EAppTextString.accountSuccessSubTitle,
                            onpressed: () {
                              Get.to(() => const LoginScreen());
                            },
                          ));
                    },
                    child: const Text(EAppTextString.econtinue)),
              ),
              const SizedBox(
                height: EAppSizes.spaceBtItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(EAppTextString.resendVerify)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
