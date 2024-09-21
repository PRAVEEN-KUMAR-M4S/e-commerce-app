import 'package:flutter/material.dart';
import 'package:grocery_app/features/auth/controller/onboarding_controller/onboard_controller.dart';

import 'package:grocery_app/utils/constants/color.dart';
import 'package:grocery_app/utils/constants/device_utility.dart';
import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/helper/helper_fun.dart';

class RoundedBtn extends StatelessWidget {
  const RoundedBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = EAppHelperFun.isDarkMode(context);
    return Positioned(
        bottom: EAppDeviceUtls.getBottomNavBarHeight(),
        right: EAppSizes.defaultSpace,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(EAppSizes.elevatedBtnRoundHeight,
                    EAppSizes.elevatedBtnRoundHeight),
                backgroundColor: isDark ? EAppColor.primary : EAppColor.black),
            onPressed: () => OnboardController.instance.next(),
            child: const Icon(Icons.arrow_right)));
  }
}
