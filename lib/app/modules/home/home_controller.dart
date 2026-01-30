import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: selectedIndex.value);
  }

  void selectTab(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }
}
