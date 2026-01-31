import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/app/modules/home/home_controller.dart';
import 'package:portfolio_app/app/modules/home/widgets/title_list.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../all/all_page.dart';
import '../contact/contact_page.dart';
import '../cv/cv_page.dart';
import '../projects/project_page.dart';
import '../skills/skill_page.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.bgColors),
      backgroundColor: AppColors.bgColors,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
              width: double.infinity,
              height: 225,
              decoration: BoxDecoration(
                color: AppColors.buttonColors,
                borderRadius: BorderRadius.circular(15),
              ),
              // child: Image.asset(AppImages.profile, fit: BoxFit.cover,width: 200,height: 200,
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Rin Samnang",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TitleList(text: "BD: 23.07.2003"),
                          TitleList(text: "Bio: Mobile Application Developer"),
                          TitleList(text: "Develop By: ThangChii"),
                          TitleList(
                            text: "Phnom Penh",
                            prefixIcon: Icons.location_on,
                          ),
                          TitleList(
                            text: "Join on January 2026",
                            prefixIcon: Icons.calendar_month,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildTabText("All", 0),
                        _buildTabText("Skills", 1),
                        _buildTabText("Projects", 2),
                        _buildTabText("Contacts", 3),
                        _buildTabText("CV", 4),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller.pageController,
              onPageChanged: (index) => controller.selectTab(index),
              physics: BouncingScrollPhysics(),
              children: [
                AllPage(),
                SkillPage(),
                ProjectPage(),
                ContactPage(),
                CvPage(),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: PageView(
                  children: [
                    Image.asset(AppImages.s1, fit: BoxFit.cover),
                    Image.asset(AppImages.s2, fit: BoxFit.cover),
                    Image.asset(AppImages.s3, fit: BoxFit.cover),
                  ],
                ),
              ),
              Container(width: double.infinity, height: 1, color: Colors.grey),
              Container(
                width: double.infinity,
                height: 50,
                color: AppColors.buttonColors,
                alignment: Alignment.center,
                child: Text(
                  "© 2024 Develop by ThangChii.",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTabText(String text, int index) {
    return Obx(
      () => GestureDetector(
        onTap: () => controller.selectTab(index),
        child: Text(
          text,
          style: TextStyle(
            color: controller.selectedIndex.value == index
                ? Colors.blue
                : Colors.black,
          ),
        ),
      ),
    );
  }
}
