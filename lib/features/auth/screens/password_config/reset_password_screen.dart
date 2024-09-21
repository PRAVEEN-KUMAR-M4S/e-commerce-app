import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/utils/constants/assets_const.dart';
import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/constants/text_string.dart';
import 'package:grocery_app/utils/helper/helper_fun.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(EAppSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(EAppAssetsConst.emailRecived),
                width: EAppHelperFun.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: EAppSizes.spaceBtSections,
              ),
              Text(
                EAppTextString.passResetMailHeading,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: EAppSizes.spaceBtItems,
              ),
              Text(
                EAppTextString.passResetMailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: EAppSizes.spaceBtSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(EAppTextString.doneButton)),
              ),
              SizedBox(
                height: EAppSizes.spaceBtItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(EAppTextString.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
