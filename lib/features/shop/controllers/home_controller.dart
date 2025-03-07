import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  final pageController = PageController();
  Rx<int> carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) => carousalCurrentIndex.value = index;

  void dotNavigationClick(index) {
    carousalCurrentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (carousalCurrentIndex.value == 2) {
      Get.offAll(
        const Login(),
      );
    } else {
      int page = carousalCurrentIndex.value + 1;
      pageController.jumpToPage(page);
      carousalCurrentIndex.value = page;
    }
  }

  void skipPage() {
    carousalCurrentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
