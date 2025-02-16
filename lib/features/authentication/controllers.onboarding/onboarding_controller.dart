import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPage = 0.obs;

  void updatePageIndicator(int index) {
    currentPage.value = index;
  }

  void dotNavigationClick(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPage.value == 2) {
      print(
          "-----------------------------------------------------------------------------------------------------");
      print(currentPage.value);
      print(
          "-----------------------------------------------------------------------------------------------------");

      // Get.offNamed('/login');
    } else {
      int page = currentPage.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPage.value = 2;
    pageController.jumpToPage(2);
  }
}
