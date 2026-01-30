import 'package:get/get.dart';
import 'package:portfolio_app/app/modules/projects/project_controller.dart';

class ProjectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectController>(() => ProjectController());
  }
}
