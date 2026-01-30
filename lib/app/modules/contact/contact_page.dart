import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'contact_controller.dart';

class ContactPage extends GetView<ContactController> {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Here my Contact Page"));
  }
}
