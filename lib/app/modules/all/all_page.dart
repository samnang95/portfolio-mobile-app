import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/app/core/constants/app_colors.dart';
import 'package:portfolio_app/app/core/constants/app_images.dart';

import '../../core/widgets/x_text/x_text.dart';
import 'all_controller.dart';

class AllPage extends GetView<AllController> {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 275,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColors,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              print("Email");
                            },
                            child: Row(
                              children: [
                                Image.asset(AppImages.email),
                                SizedBox(width: 12),
                                XText(
                                  text: "Email",
                                  color: AppColors.textColors,
                                ),
                              ],
                            ),
                          ),
                          Text(""),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColors,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      print("Git hub");
                    },
                    child: Center(child: Image.asset(AppImages.github)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: 160,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColors,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          print("Instagram");
                        },
                        child: Row(
                          children: [
                            Image.asset(AppImages.ig),
                            SizedBox(width: 12),
                            XText(
                              text: "Instagram",
                              color: AppColors.textColors,
                            ),
                          ],
                        ),
                      ),
                      Text(""),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: 160,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColors,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          print("Facebook");
                        },
                        child: Row(
                          children: [
                            Image.asset(AppImages.fb),
                            SizedBox(width: 12),
                            XText(
                              text: " Facebook",
                              color: AppColors.textColors,
                            ),
                          ],
                        ),
                      ),
                      Text(""),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColors,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      print("telegram");
                    },
                    child: Center(child: Image.asset(AppImages.telegram)),
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColors,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      print("Twitter");
                    },
                    child: Image.asset(AppImages.x),
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColors,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      print("tiktok");
                    },
                    child: Image.asset(AppImages.tiktok),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
