import 'package:flutter/material.dart';
import 'package:grocery_app/features/auth/controller/onboarding_controller/onboard_controller.dart';

import 'package:grocery_app/utils/constants/device_utility.dart';
import 'package:grocery_app/utils/constants/size.dart';

class TextSkipBtn extends StatelessWidget {
  const TextSkipBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: EAppSizes.defaultSpace,
        top: EAppDeviceUtls.getAppBarHeight(),
        child: TextButton(
            onPressed: () {
              OnboardController.instance.skip();
            },
            child: const Text('Skip')));
  }
}
