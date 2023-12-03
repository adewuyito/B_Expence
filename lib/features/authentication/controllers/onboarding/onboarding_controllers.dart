import 'package:b_expence/features/authentication/views/Login/login.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  /// Update current index
  void upadatPageIndicator(index) => currentIndex.value = index;

  /// Jump to the specific selected page
  void dotNavigation(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update current index and jump to the next page
  void nextPage() {
    if (currentIndex.value == 2) {
      skipPage();
    } else {
      // int page = currentIndex.value + 1;
      pageController.nextPage(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeIn,
      );
    }
  }

  /// Upadat current index and jump to last page
  void skipPage() {
    Get.offAll(const LoginView());
  }
}
