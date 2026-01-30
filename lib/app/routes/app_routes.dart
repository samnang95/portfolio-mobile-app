import 'package:get/get.dart';
import 'package:portfolio_app/app/modules/contact/contact_binding.dart';
import 'package:portfolio_app/app/modules/contact/contact_page.dart';
import 'package:portfolio_app/app/modules/cv/cv_binding.dart';
import 'package:portfolio_app/app/modules/home/home_page.dart';
import 'package:portfolio_app/app/modules/projects/project_binding.dart';
import 'package:portfolio_app/app/modules/projects/project_page.dart';
import 'package:portfolio_app/app/modules/skills/skill_bindind.dart';
import 'package:portfolio_app/app/modules/skills/skill_page.dart';

import '../modules/cv/cv_page.dart';
import '../modules/home/home_binding.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_page.dart';

class AppRoutes {
  static const String splashPage = '/splash';
  static const String homePage = '/home';
  static const String skillsPage = '/skills';
  static const String projectsPage = '/projects';
  static const String contactPage = '/contact';
  static const String allPage = '/all';
  static const String cvPage = '/cv';

  static final routesPage = [
    GetPage(
      name: splashPage,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: homePage,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: allPage,
      page: () => const SkillPage(),
      binding: SkillBinding(),
    ),
    GetPage(
      name: skillsPage,
      page: () => const SkillPage(),
      binding: SkillBinding(),
    ),
    GetPage(
      name: projectsPage,
      page: () => const ProjectPage(),
      binding: ProjectBinding(),
    ),
    GetPage(
      name: contactPage,
      page: () => const ContactPage(),
      binding: ContactBinding(),
    ),
    GetPage(name: cvPage, page: () => const CvPage(), binding: CvBinding()),
  ];
}
