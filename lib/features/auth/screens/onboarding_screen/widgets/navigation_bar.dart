import 'package:flutter/material.dart';
import 'package:grocery_app/features/auth/controller/onboarding_controller/onboard_controller.dart';
import 'package:grocery_app/utils/constants/color.dart';
import 'package:grocery_app/utils/constants/device_utility.dart';
import 'package:grocery_app/utils/constants/size.dart';
import 'package:grocery_app/utils/helper/helper_fun.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NavigationBarDot extends StatelessWidget {
  const NavigationBarDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardController.instance;
    final isdark = EAppHelperFun.isDarkMode(context);
    return Positioned(
        bottom: EAppDeviceUtls.getBottomNavBarHeight() + 25,
        left: EAppSizes.defaultSpace,
        child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
                activeDotColor: isdark ? EAppColor.dark : EAppColor.light,
                dotHeight: 6),
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationIndi,
            count: 3));
  }
}
