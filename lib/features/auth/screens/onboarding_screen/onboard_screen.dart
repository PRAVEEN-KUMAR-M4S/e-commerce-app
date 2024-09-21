import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:grocery_app/features/auth/controller/onboarding_controller/onboard_controller.dart';
import 'package:grocery_app/features/auth/screens/onboarding_screen/widgets/navigation_bar.dart';
import 'package:grocery_app/features/auth/screens/onboarding_screen/widgets/onboarding_screen.dart';
import 'package:grocery_app/features/auth/screens/onboarding_screen/widgets/rounded_btn.dart';
import 'package:grocery_app/features/auth/screens/onboarding_screen/widgets/text_skip_btn.dart';

import 'package:grocery_app/utils/constants/assets_const.dart';
import 'package:grocery_app/utils/constants/text_string.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicartor,
            children: [
              OnBoardingScreen(
                title: EAppTextString.onBoardingTitle1,
                subTitle: EAppTextString.onBoardingSubTitle1,
                img: EAppAssetsConst.onboardScreen1,
              ),
              OnBoardingScreen(
                title: EAppTextString.onBoardingTitle2,
                subTitle: EAppTextString.onBoardingSubTitle2,
                img: EAppAssetsConst.onboardScreen2,
              ),
              OnBoardingScreen(
                title: EAppTextString.onBoardingTitle3,
                subTitle: EAppTextString.onBoardingSubTitle3,
                img: EAppAssetsConst.onboardScreen3,
              ),
            ],
          ),
          const TextSkipBtn(),
          const NavigationBarDot(),
          const RoundedBtn()
        ],
      ),
    );
  }
}
