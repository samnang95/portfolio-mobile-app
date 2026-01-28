import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/app/core/constants/app_images.dart';
import 'package:portfolio_app/app/modules/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: controller.animationController,
          builder: (context, child) {
            return Transform.scale(
              scale: controller.scaleAnimation.value,
              child: Opacity(
                opacity: controller.opacityAnimation.value,
                child: Image.asset(
                  AppImages.logo,
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
