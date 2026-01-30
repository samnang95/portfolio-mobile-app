import 'package:get/get.dart';

import 'all_controller.dart';

class AllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllController>(() => AllController());
  }
}
