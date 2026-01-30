import 'package:get/get.dart';
import 'package:portfolio_app/app/modules/skills/skill_controller.dart';

class SkillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SkillController>(() => SkillController());
  }
}
