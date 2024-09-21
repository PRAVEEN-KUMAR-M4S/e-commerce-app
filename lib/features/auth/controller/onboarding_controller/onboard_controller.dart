import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/features/auth/screens/login/screens/login_screen.dart';

class OnboardController extends GetxController {
  static OnboardController get instance => Get.find();

  final pageController = PageController();
  final currentPageIndex = 0.obs;

  void updatePageIndicartor(index) => currentPageIndex.value = index;

  void dotNavigationIndi(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void skip() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  void next() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      pageController.jumpToPage(currentPageIndex.value + 1);
    }
  }
}
