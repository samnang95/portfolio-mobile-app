import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/app/modules/projects/project_controller.dart';

class ProjectPage extends GetView<ProjectController> {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Here Project Page"));
  }
}
